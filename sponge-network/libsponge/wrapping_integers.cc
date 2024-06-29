#include "wrapping_integers.hh"

// Dummy implementation of a 32-bit wrapping integer

// For Lab 2, please replace with a real implementation that passes the
// automated checks run by `make check_lab2`.

template <typename... Targs>
void DUMMY_CODE(Targs &&... /* unused */) {}

using namespace std;

//! Transform an "absolute" 64-bit sequence number (zero-indexed) into a WrappingInt32
//! \param n The input absolute 64-bit sequence number
//! \param isn The initial sequence number
WrappingInt32 wrap(uint64_t n, WrappingInt32 isn) {
    return WrappingInt32(isn.raw_value() + (n & 0x00000000ffffffff));
}

//! Transform a WrappingInt32 into an "absolute" 64-bit sequence number (zero-indexed)
//! \param n The relative sequence number
//! \param isn The initial sequence number
//! \param checkpoint A recent absolute 64-bit sequence number
//! \returns the 64-bit sequence number that wraps to `n` and is closest to `checkpoint`
//!
//! \note Each of the two streams of the TCP connection has its own ISN. One stream
//! runs from the local TCPSender to the remote TCPReceiver and has one ISN,
//! and the other stream runs from the remote TCPSender to the local TCPReceiver and
//! has a different ISN.
static uint64_t distance(uint64_t absolute_seqno_case, uint64_t checkpoint) {
    if (absolute_seqno_case >= checkpoint) {
      return absolute_seqno_case - checkpoint;
    } else {
      return checkpoint - absolute_seqno_case;
    }
}

uint64_t unwrap(WrappingInt32 n, WrappingInt32 isn, uint64_t checkpoint) {
    uint32_t offset = n.raw_value() - isn.raw_value();
    uint64_t x = (checkpoint & 0xffffffff00000000) + offset;
    uint64_t d0 = distance(x, checkpoint);
    uint64_t d1 = distance((x + (1ul << 32)), checkpoint);
    uint64_t d2 = distance((x - (1ul << 32)), checkpoint);
    if (d0 <= d1) {
        if (d0 <= d2) {
            return x;
        } else {
            return x - (1ul << 32);
        }
    } else {
        if (d1 <= d2) {
            return x + (1ul << 32);
        } else {
            return x - (1ul << 32);
        }
    }
}