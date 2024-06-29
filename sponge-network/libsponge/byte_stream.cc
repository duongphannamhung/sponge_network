#include "byte_stream.hh"

#include <iostream>
#include <vector>

// Dummy implementation of a flow-controlled in-memory byte stream.

// For Lab 0, please replace with a real implementation that passes the
// automated checks run by `make check_lab0`.

// You will need to add private members to the class declaration in `byte_stream.hh`

template <typename... Targs>
void DUMMY_CODE(Targs &&... /* unused */) {}

using namespace std;

ByteStream::ByteStream(const size_t capacity) : _capacity(capacity) { buffer.resize(_capacity); }

size_t ByteStream::write(const string &data) {
    if (input_ended()) {
        set_error();
        return 0;
    }

    // std::cout << "Data: " << data << std::endl;
    const size_t length = std::min(data.length(), remaining_capacity());

    for (size_t i = 0; i < length; i++) {
        buffer[_write_ptr] = data[i];
        set_write_ptr(1);
    }

    _bytes_written_count += length;
    _size += length;

    return length;
}

//! \param[in] len bytes will be copied from the output side of the buffer
string ByteStream::peek_output(const size_t len) const {
    std::string str{};
    const size_t length = std::min(len, buffer_size());

    for (size_t i = 0; i < length; i++) {
        str.push_back(buffer[(i + _read_ptr) % _capacity]);
    }

    return str;
}

//! \param[in] len bytes will be removed from the output side of the buffer
void ByteStream::pop_output(const size_t len) {
    const size_t length = std::min(len, buffer_size());
    set_read_ptr(length);
    _size -= length;
    _bytes_read_count += length;
}

//! Read (i.e., copy and then pop) the next "len" bytes of the stream
//! \param[in] len bytes will be popped and returned
//! \returns a string
std::string ByteStream::read(const size_t len) {
    std::string str = peek_output(len);
    pop_output(len);
    return str;
}

void ByteStream::end_input() { _input_ended = true; }

bool ByteStream::input_ended() const { return _input_ended; }

size_t ByteStream::buffer_size() const { return _size; }

bool ByteStream::buffer_empty() const { return _size == 0; }

bool ByteStream::eof() const { return input_ended() && buffer_empty(); }

size_t ByteStream::bytes_written() const { return _bytes_written_count; }

size_t ByteStream::bytes_read() const { return _bytes_read_count; }

size_t ByteStream::remaining_capacity() const { return _capacity - _size; }
