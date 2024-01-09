#include "stream_reassembler.hh"
#include <iostream>
#include <vector>
#include <bits/stdc++.h>

// Dummy implementation of a stream reassembler.

// For Lab 1, please replace with a real implementation that passes the
// automated checks run by `make check_lab1`.

// You will need to add private members to the class declaration in `stream_reassembler.hh`

template <typename... Targs>
void DUMMY_CODE(Targs &&... /* unused */) {}

using namespace std;

StreamReassembler::StreamReassembler(const size_t capacity) : 
    _output(capacity), 
    _capacity(capacity),
    _eof_index(-1),
    _curr_index(0),
    _count_unassb_bytes(0)
    {}

//! \details This function accepts a substring (aka a segment) of bytes,
//! possibly out-of-order, from the logical stream, and assembles any newly
//! contiguous substrings and writes them into the output stream in order.
void StreamReassembler::push_substring(const string &data, const size_t index, const bool eof) {
    // if (data.size() > 1000 || _output.buffer_size() > 100) {
    //     std::cout << "too long, by pass" << "\b\n";
    // } else {
    //     std::cout << "$$$ $$$ Base data: " << data << " || index: " << index << " || eof: " << eof << " || curr_index: " << _curr_index << "\b\n\n";
    // }
 
    // if eof -> eof_index = index + data.size();
    if (eof) {
        _eof_index = index + data.size();
    }

    string write_data = data;
    size_t write_index = index;

    // std::cout << "write_data stage 1: ";
    // if (!check_write_duplicate(write_index, write_data, _curr_index)) {
    //     std::cout << "write_data is NULL" << "\b\n";
    //     return;
    // }
    // std::cout << write_data << "\b\n";
    
    // check_capacity(write_index, write_data, _curr_index);
    // std::cout << "write_data stage 2: " << write_data << "\b\n";

    auto search = _map.find(write_index);
    if (search != _map.end()) {
        string temp_value = search->second;
        if (temp_value.size() < write_data.size()) {
            _map.erase(search->first);
            _count_unassb_bytes -= temp_value.size();
        } else {
            return;
        }
    }

    _map.insert({write_index, write_data});
    _count_unassb_bytes += write_data.size();
    // std::cout << "[debug] before curr_index: " << _curr_index << " || write_data: " << write_data << "\b\n";
    recheck_aux_map_after_add(_curr_index);
    // std::cout << "[debug] after curr_index: " << _curr_index << " || write_data: " << write_data << "\b\n";

    // while can write (aux_map can find index)
    // write the pop
    while (_map.find(_curr_index) != _map.end()) {
        auto temp = _map.find(_curr_index);
        string value = temp->second;

        size_t temp_index = _curr_index;
        // std::cout << "Current_index before: " << _curr_index << "\b\n";
        _curr_index += value.size();
        // std::cout << "after current_index " << _curr_index << "\b\n";

        _count_unassb_bytes -= value.size();

        _output.write(_map[temp_index]);

        // std::cout << "Written data: " << _map[temp_index] << " || old_index: " << temp_index << " || new_index: " << _curr_index << "\b\n";
        _map.erase(temp_index);
    }

    // if curr_size == eof_index -> _output.input_end;
    if (_curr_index == _eof_index) {
        _output.end_input();
    }
}

// void StreamReassembler::update_aux_map() {
//     // reflush the aux_map
//     for (auto i = _map.begin(); i != _map.end(); ++i) {
//         size_t key = i->first;
//         string value = i->second;        
//         std::cout << "curr_index: " << _curr_index << " ### key: " << key << " ### value: " << value << "\b\n";

//         _map.erase(key);
//         _count_unassb_bytes -= value.size();
//         check_duplicate(key, value);
//         check_capacity(key, value);

//         std::cout << "after: key: " << key << " || value: " << value << "\b\n";
//         if (value != "") {
//             _map.insert({key,value});
//             _count_unassb_bytes += value.size();
//         }
//     }
// }

// void StreamReassembler::check_aux_map() {
//     // if data size + aux_map size + buffer_size > capacity -> truncate the tail -> return data
//     if (write_data.size() + _count_unassb_bytes + _output.buffer_size() > _capacity) {
//         // truncate the 
//         // write_data = write_data.substr(0, _capacity - _output.buffer_size() - _count_unassb_bytes);
//         update_aux_map();
//         if (write_data.size() + _count_unassb_bytes + _output.buffer_size() > _capacity) {
//             write_data = write_data.substr(0, _capacity - _output.buffer_size() - _count_unassb_bytes);
//         }
//     }
// }

size_t StreamReassembler::check_write_duplicate(size_t& write_index, string& write_data, const size_t& curr_index) {
    // cut the head if it's duplicated
    // if index < curr_index && index + data size > curr_index -> truncate the head -> return data
    size_t new_index = curr_index;
    if (write_index < curr_index) {
        // truncate the head
        // std::cout << "[debug] check_write_dup: true, curr_index: " << curr_index << "\b\n";
        if (write_index + write_data.size() > curr_index) {
            write_data = write_data.substr(curr_index - write_index);
            write_index = curr_index;
            new_index = write_index + write_data.size();
        } else {
            write_data = "";
            return -1;
        }
    } else {
        // std::cout << "[debug] check_write_duplicate: else" << "\b\n";
        new_index = write_index + write_data.size();
    }
    return new_index;
}

void StreamReassembler::recheck_aux_map_after_add(const size_t& curr_index) {  
    vector<size_t> list_key = sorted_key_map(true);
    size_t max_index = curr_index;

    // std::cout << "List key size: " << list_key.size() << "|| map size: " << _map.size() << "\b\n";
    // check head already write
    for (size_t i = 0 ; i < list_key.size(); i++) {
        size_t key = list_key[i];
        string value = _map[key];
        // std::cout << "[debug] stage 1: key: " << key << " || value: " << value << "\b\n";
        _map.erase(key);
        _count_unassb_bytes -= value.size();

        size_t new_index = check_write_duplicate(key, value, max_index);
        size_t error_status = -1;
        if (new_index != error_status) {
            // std::cout << "new index: " << new_index << "\b\n";
            max_index = new_index;
            _map.insert({key, value});
            _count_unassb_bytes += value.size();
        }
    }

    // check tail is out of capacity
    list_key = sorted_key_map(false);
    for (size_t i = 0; i < list_key.size(); i++) {
        size_t key = list_key[i];
        string value = _map[key];
        // std::cout << "Value in stage 2: " << value << "\b\n";
        _map.erase(key);
        _count_unassb_bytes -= value.size();
        check_capacity(value);
        if (value != "") {
            _map.insert({key, value});
            // std::cout << "after check capacity: " << value << "\b\n";
            _count_unassb_bytes += value.size();
            break;
        }
    }
}

std::vector<size_t> StreamReassembler::sorted_key_map(bool ascending) {
    std::vector<size_t> list_key;
    for (auto i = _map.begin(); i != _map.end(); i++) {
        list_key.push_back(i->first);    
    }
    
    if (ascending) {
        std::sort(list_key.begin(), list_key.end()); 
    } else {
        std::sort(list_key.begin(), list_key.end(), greater<size_t>());
    }
    return list_key;
}

void StreamReassembler::check_capacity(string& write_data) {
    // // if data size + index - curr_index > capacity -> truncate the tail -> return data
    // if (write_data.size() + write_index - curr_index > _capacity) {
    //     // truncate the tail
    //     write_data = write_data.substr(0, _capacity + curr_index - write_index);
    // }

    // std::cout << "In check capacity: write_data size: " << write_data.size() << " || _count_unassb: " << _count_unassb_bytes << " || buffer size: " << _output.buffer_size() << "\b\n";
    if (write_data.size() + _count_unassb_bytes + _output.buffer_size() > _capacity) {
        // truncate
        write_data = write_data.substr(0, _capacity - _output.buffer_size() - _count_unassb_bytes);
    }
}

// void StreamReassembler::handle_out_of_capacity(const string &data) {
//     string temp;
//     int i = 0;
//     while (_output.bytes_written() < _capacity) {
//         temp += data[i];   
//         i++;
//     }
//     _output.write(temp);
//     _output.end_input();
// }

size_t StreamReassembler::unassembled_bytes() const { return _count_unassb_bytes; }

bool StreamReassembler::empty() const { return _map.empty(); }

// void StreamReassembler::push_substring(const string &data, const size_t index, const bool eof) {
//     // std::cout << "Data: " << data << " index " << index << " eof " << eof << "\b\n";
//     if (eof) {
//         _eof_index = index + data.size();
//     }

//     // if (_output.buffer_size() + data.size() + unassembled_bytes() > _capacity) {
        
//     //     return;
//     // }

//     if (_curr_index == index) {
//         if (unassembled_bytes() + data.size() <= _capacity && _curr_index != _eof_index) {
//             std::cout << "Data: " << data << "\b\n";
//             _output.write(data);
//             _curr_index += data.size();
//             // std:: cout << "Curr index: " << _curr_index << "\b\n";
//             while (_map.count(_curr_index)) {
//                 if (_output.bytes_written() + data.size() > _capacity) {
//                     handle_out_of_capacity(_map[_curr_index]);
//                 }
//                 else {
//                     // _output.write(_map[_curr_index]);
//                     // std::cout << "index: " << _curr_index << " || current value " << _map[_curr_index] << "\b\n";
//                     _count_unassb_bytes -= _map[_curr_index].size();
//                     // std:: cout << "size: " << _map[_curr_index].length() << " curr index after + curr size " << _curr_index << "\b\n";
//                     size_t _temp = _curr_index;
//                     _curr_index += _map[_curr_index].size();
//                     _map.erase(_temp);
//                 }
//             }
//         } else {
//             handle_out_of_capacity(data);
//         }
//     } else if (index < _curr_index) {
//         if (index + data.size() - 1 >= _curr_index) {
//             string temp;
//             size_t i = 0;
//             while (i < data.size()) {
//                 if (i + index >= _curr_index) {
//                     temp += data[i];
//                 }
//                 i++;
//             }

//             _output.write(temp);
//         }
//     } else {
//         _map[index] = data;
//         _count_unassb_bytes += data.size();
//     }

//     if (_curr_index == _eof_index) {
//         _output.end_input();
//         return;
//     }
// }