# CMake generated Testfile for 
# Source directory: /home/ubuntu/sponge_network/sponge
# Build directory: /home/ubuntu/sponge_network/sponge/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(t_wrapping_ints_cmp "wrapping_integers_cmp")
add_test(t_wrapping_ints_unwrap "wrapping_integers_unwrap")
add_test(t_wrapping_ints_wrap "wrapping_integers_wrap")
add_test(t_recv_connect "recv_connect")
add_test(t_recv_transmit "recv_transmit")
add_test(t_recv_window "recv_window")
add_test(t_recv_reorder "recv_reorder")
add_test(t_recv_close "recv_close")
add_test(t_send_connect "send_connect")
add_test(t_send_transmit "send_transmit")
add_test(t_send_retx "send_retx")
add_test(t_send_window "send_window")
add_test(t_send_ack "send_ack")
add_test(t_send_close "send_close")
add_test(t_strm_reassem_cap "fsm_stream_reassembler_cap")
add_test(t_strm_reassem_single "fsm_stream_reassembler_single")
add_test(t_strm_reassem_seq "fsm_stream_reassembler_seq")
add_test(t_strm_reassem_dup "fsm_stream_reassembler_dup")
add_test(t_strm_reassem_holes "fsm_stream_reassembler_holes")
add_test(t_strm_reassem_many "fsm_stream_reassembler_many")
add_test(t_strm_reassem_overlapping "fsm_stream_reassembler_overlapping")
add_test(t_strm_reassem_win "fsm_stream_reassembler_win")
add_test(t_byte_stream_construction "/home/ubuntu/sponge_network/sponge/build/tests/byte_stream_construction")
add_test(t_byte_stream_one_write "/home/ubuntu/sponge_network/sponge/build/tests/byte_stream_one_write")
add_test(t_byte_stream_two_writes "/home/ubuntu/sponge_network/sponge/build/tests/byte_stream_two_writes")
add_test(t_byte_stream_capacity "/home/ubuntu/sponge_network/sponge/build/tests/byte_stream_capacity")
add_test(t_byte_stream_many_writes "/home/ubuntu/sponge_network/sponge/build/tests/byte_stream_many_writes")
add_test(t_webget "/home/ubuntu/sponge_network/sponge/tests/webget_t.sh")
add_test(arp_network_interface "net_interface")
add_test(router_test "network_simulator")
add_test(t_tcp_parser "tcp_parser" "/home/ubuntu/sponge_network/sponge/tests/ipv4_parser.data")
add_test(t_ipv4_parser "ipv4_parser" "/home/ubuntu/sponge_network/sponge/tests/ipv4_parser.data")
add_test(t_active_close "fsm_active_close")
add_test(t_passive_close "fsm_passive_close")
add_test(ec_ack_rst "fsm_ack_rst")
add_test(t_ack_rst "fsm_ack_rst_relaxed")
add_test(ec_ack_rst_win "fsm_ack_rst_win")
add_test(t_ack_rst_win "fsm_ack_rst_win_relaxed")
add_test(ec_connect "fsm_connect")
add_test(t_connect "fsm_connect_relaxed")
add_test(ec_listen "fsm_listen")
add_test(t_listen "fsm_listen_relaxed")
add_test(t_winsize "fsm_winsize")
add_test(ec_retx "fsm_retx")
add_test(t_retx "fsm_retx_relaxed")
add_test(t_retx_win "fsm_retx_win")
add_test(t_loopback "fsm_loopback")
add_test(t_loopback_win "fsm_loopback_win")
add_test(t_reorder "fsm_reorder")
add_test(t_address_dt "/home/ubuntu/sponge_network/sponge/build/doctests/address_dt")
add_test(t_parser_dt "/home/ubuntu/sponge_network/sponge/build/doctests/parser_dt")
add_test(t_socket_dt "/home/ubuntu/sponge_network/sponge/build/doctests/socket_dt")
add_test(t_udp_client_send "/home/ubuntu/sponge_network/sponge/txrx.sh" "-ucS")
add_test(t_udp_server_send "/home/ubuntu/sponge_network/sponge/txrx.sh" "-usS")
add_test(t_udp_client_recv "/home/ubuntu/sponge_network/sponge/txrx.sh" "-ucR")
add_test(t_udp_server_recv "/home/ubuntu/sponge_network/sponge/txrx.sh" "-usR")
add_test(t_udp_client_dupl "/home/ubuntu/sponge_network/sponge/txrx.sh" "-ucD")
add_test(t_udp_server_dupl "/home/ubuntu/sponge_network/sponge/txrx.sh" "-usD")
add_test(t_ucS_1M_32k "/home/ubuntu/sponge_network/sponge/txrx.sh" "-ucSd" "1M" "-w" "32K")
add_test(t_ucS_128K_8K "/home/ubuntu/sponge_network/sponge/txrx.sh" "-ucSd" "128K" "-w" "8K")
add_test(t_ucS_16_1 "/home/ubuntu/sponge_network/sponge/txrx.sh" "-ucSd" "16" "-w" "1")
add_test(t_ucS_32K_d "/home/ubuntu/sponge_network/sponge/txrx.sh" "-ucSd" "32K")
add_test(t_ucR_1M_32k "/home/ubuntu/sponge_network/sponge/txrx.sh" "-ucRd" "1M" "-w" "32K")
add_test(t_ucR_128K_8K "/home/ubuntu/sponge_network/sponge/txrx.sh" "-ucRd" "128K" "-w" "8K")
add_test(t_ucR_16_1 "/home/ubuntu/sponge_network/sponge/txrx.sh" "-ucRd" "16" "-w" "1")
add_test(t_ucR_32K_d "/home/ubuntu/sponge_network/sponge/txrx.sh" "-ucRd" "32K")
add_test(t_ucD_1M_32k "/home/ubuntu/sponge_network/sponge/txrx.sh" "-ucDd" "1M" "-w" "32K")
add_test(t_ucD_128K_8K "/home/ubuntu/sponge_network/sponge/txrx.sh" "-ucDd" "128K" "-w" "8K")
add_test(t_ucD_16_1 "/home/ubuntu/sponge_network/sponge/txrx.sh" "-ucDd" "16" "-w" "1")
add_test(t_ucD_32K_d "/home/ubuntu/sponge_network/sponge/txrx.sh" "-ucDd" "32K")
add_test(t_usS_1M_32k "/home/ubuntu/sponge_network/sponge/txrx.sh" "-usSd" "1M" "-w" "32K")
add_test(t_usS_128K_8K "/home/ubuntu/sponge_network/sponge/txrx.sh" "-usSd" "128K" "-w" "8K")
add_test(t_usS_16_1 "/home/ubuntu/sponge_network/sponge/txrx.sh" "-usSd" "16" "-w" "1")
add_test(t_usS_32K_d "/home/ubuntu/sponge_network/sponge/txrx.sh" "-usSd" "32K")
add_test(t_usR_1M_32k "/home/ubuntu/sponge_network/sponge/txrx.sh" "-usRd" "1M" "-w" "32K")
add_test(t_usR_128K_8K "/home/ubuntu/sponge_network/sponge/txrx.sh" "-usRd" "128K" "-w" "8K")
add_test(t_usR_16_1 "/home/ubuntu/sponge_network/sponge/txrx.sh" "-usRd" "16" "-w" "1")
add_test(t_usR_32K_d "/home/ubuntu/sponge_network/sponge/txrx.sh" "-usRd" "32K")
add_test(t_usD_1M_32k "/home/ubuntu/sponge_network/sponge/txrx.sh" "-usDd" "1M" "-w" "32K")
add_test(t_usD_128K_8K "/home/ubuntu/sponge_network/sponge/txrx.sh" "-usDd" "128K" "-w" "8K")
add_test(t_usD_16_1 "/home/ubuntu/sponge_network/sponge/txrx.sh" "-usDd" "16" "-w" "1")
add_test(t_usD_32K_d "/home/ubuntu/sponge_network/sponge/txrx.sh" "-usDd" "32K")
add_test(t_ucS_128K_8K_l "/home/ubuntu/sponge_network/sponge/txrx.sh" "-ucSd" "128K" "-w" "8K" "-l" "0.1")
add_test(t_ucS_128K_8K_L "/home/ubuntu/sponge_network/sponge/txrx.sh" "-ucSd" "128K" "-w" "8K" "-L" "0.1")
add_test(t_ucS_128K_8K_lL "/home/ubuntu/sponge_network/sponge/txrx.sh" "-ucSd" "128K" "-w" "8K" "-l" "0.1" "-L" "0.1")
add_test(t_ucR_128K_8K_l "/home/ubuntu/sponge_network/sponge/txrx.sh" "-ucRd" "128K" "-w" "8K" "-l" "0.1")
add_test(t_ucR_128K_8K_L "/home/ubuntu/sponge_network/sponge/txrx.sh" "-ucRd" "128K" "-w" "8K" "-L" "0.1")
add_test(t_ucR_128K_8K_lL "/home/ubuntu/sponge_network/sponge/txrx.sh" "-ucRd" "128K" "-w" "8K" "-l" "0.1" "-L" "0.1")
add_test(t_ucD_128K_8K_l "/home/ubuntu/sponge_network/sponge/txrx.sh" "-ucDd" "128K" "-w" "8K" "-l" "0.1")
add_test(t_ucD_128K_8K_L "/home/ubuntu/sponge_network/sponge/txrx.sh" "-ucDd" "128K" "-w" "8K" "-L" "0.1")
add_test(t_ucD_128K_8K_lL "/home/ubuntu/sponge_network/sponge/txrx.sh" "-ucDd" "128K" "-w" "8K" "-l" "0.1" "-L" "0.1")
add_test(t_usS_128K_8K_l "/home/ubuntu/sponge_network/sponge/txrx.sh" "-usSd" "128K" "-w" "8K" "-l" "0.1")
add_test(t_usS_128K_8K_L "/home/ubuntu/sponge_network/sponge/txrx.sh" "-usSd" "128K" "-w" "8K" "-L" "0.1")
add_test(t_usS_128K_8K_lL "/home/ubuntu/sponge_network/sponge/txrx.sh" "-usSd" "128K" "-w" "8K" "-l" "0.1" "-L" "0.1")
add_test(t_usR_128K_8K_l "/home/ubuntu/sponge_network/sponge/txrx.sh" "-usRd" "128K" "-w" "8K" "-l" "0.1")
add_test(t_usR_128K_8K_L "/home/ubuntu/sponge_network/sponge/txrx.sh" "-usRd" "128K" "-w" "8K" "-L" "0.1")
add_test(t_usR_128K_8K_lL "/home/ubuntu/sponge_network/sponge/txrx.sh" "-usRd" "128K" "-w" "8K" "-l" "0.1" "-L" "0.1")
add_test(t_usD_128K_8K_l "/home/ubuntu/sponge_network/sponge/txrx.sh" "-usDd" "128K" "-w" "8K" "-l" "0.1")
add_test(t_usD_128K_8K_L "/home/ubuntu/sponge_network/sponge/txrx.sh" "-usDd" "128K" "-w" "8K" "-L" "0.1")
add_test(t_usD_128K_8K_lL "/home/ubuntu/sponge_network/sponge/txrx.sh" "-usDd" "128K" "-w" "8K" "-l" "0.1" "-L" "0.1")
add_test(t_ipv4_client_send "/home/ubuntu/sponge_network/sponge/txrx.sh" "-icS")
add_test(t_ipv4_server_send "/home/ubuntu/sponge_network/sponge/txrx.sh" "-isS")
add_test(t_ipv4_client_recv "/home/ubuntu/sponge_network/sponge/txrx.sh" "-icR")
add_test(t_ipv4_server_recv "/home/ubuntu/sponge_network/sponge/txrx.sh" "-isR")
add_test(t_ipv4_client_dupl "/home/ubuntu/sponge_network/sponge/txrx.sh" "-icD")
add_test(t_ipv4_server_dupl "/home/ubuntu/sponge_network/sponge/txrx.sh" "-isD")
add_test(t_icS_1M_32k "/home/ubuntu/sponge_network/sponge/txrx.sh" "-icSd" "1M" "-w" "32K")
add_test(t_icS_128K_8K "/home/ubuntu/sponge_network/sponge/txrx.sh" "-icSd" "128K" "-w" "8K")
add_test(t_icS_16_1 "/home/ubuntu/sponge_network/sponge/txrx.sh" "-icSd" "16" "-w" "1")
add_test(t_icS_32K_d "/home/ubuntu/sponge_network/sponge/txrx.sh" "-icSd" "32K")
add_test(t_icR_1M_32k "/home/ubuntu/sponge_network/sponge/txrx.sh" "-icRd" "1M" "-w" "32K")
add_test(t_icR_128K_8K "/home/ubuntu/sponge_network/sponge/txrx.sh" "-icRd" "128K" "-w" "8K")
add_test(t_icR_16_1 "/home/ubuntu/sponge_network/sponge/txrx.sh" "-icRd" "16" "-w" "1")
add_test(t_icR_32K_d "/home/ubuntu/sponge_network/sponge/txrx.sh" "-icRd" "32K")
add_test(t_icD_1M_32k "/home/ubuntu/sponge_network/sponge/txrx.sh" "-icDd" "1M" "-w" "32K")
add_test(t_icD_128K_8K "/home/ubuntu/sponge_network/sponge/txrx.sh" "-icDd" "128K" "-w" "8K")
add_test(t_icD_16_1 "/home/ubuntu/sponge_network/sponge/txrx.sh" "-icDd" "16" "-w" "1")
add_test(t_icD_32K_d "/home/ubuntu/sponge_network/sponge/txrx.sh" "-icDd" "32K")
add_test(t_isS_1M_32k "/home/ubuntu/sponge_network/sponge/txrx.sh" "-isSd" "1M" "-w" "32K")
add_test(t_isS_128K_8K "/home/ubuntu/sponge_network/sponge/txrx.sh" "-isSd" "128K" "-w" "8K")
add_test(t_isS_16_1 "/home/ubuntu/sponge_network/sponge/txrx.sh" "-isSd" "16" "-w" "1")
add_test(t_isS_32K_d "/home/ubuntu/sponge_network/sponge/txrx.sh" "-isSd" "32K")
add_test(t_isR_1M_32k "/home/ubuntu/sponge_network/sponge/txrx.sh" "-isRd" "1M" "-w" "32K")
add_test(t_isR_128K_8K "/home/ubuntu/sponge_network/sponge/txrx.sh" "-isRd" "128K" "-w" "8K")
add_test(t_isR_16_1 "/home/ubuntu/sponge_network/sponge/txrx.sh" "-isRd" "16" "-w" "1")
add_test(t_isR_32K_d "/home/ubuntu/sponge_network/sponge/txrx.sh" "-isRd" "32K")
add_test(t_isD_1M_32k "/home/ubuntu/sponge_network/sponge/txrx.sh" "-isDd" "1M" "-w" "32K")
add_test(t_isD_128K_8K "/home/ubuntu/sponge_network/sponge/txrx.sh" "-isDd" "128K" "-w" "8K")
add_test(t_isD_16_1 "/home/ubuntu/sponge_network/sponge/txrx.sh" "-isDd" "16" "-w" "1")
add_test(t_isD_32K_d "/home/ubuntu/sponge_network/sponge/txrx.sh" "-isDd" "32K")
add_test(t_icS_128K_8K_l "/home/ubuntu/sponge_network/sponge/txrx.sh" "-icSd" "128K" "-w" "8K" "-l" "0.1")
add_test(t_icS_128K_8K_L "/home/ubuntu/sponge_network/sponge/txrx.sh" "-icSd" "128K" "-w" "8K" "-L" "0.1")
add_test(t_icS_128K_8K_lL "/home/ubuntu/sponge_network/sponge/txrx.sh" "-icSd" "128K" "-w" "8K" "-l" "0.1" "-L" "0.1")
add_test(t_icR_128K_8K_l "/home/ubuntu/sponge_network/sponge/txrx.sh" "-icRd" "128K" "-w" "8K" "-l" "0.1")
add_test(t_icR_128K_8K_L "/home/ubuntu/sponge_network/sponge/txrx.sh" "-icRd" "128K" "-w" "8K" "-L" "0.1")
add_test(t_icR_128K_8K_lL "/home/ubuntu/sponge_network/sponge/txrx.sh" "-icRd" "128K" "-w" "8K" "-l" "0.1" "-L" "0.1")
add_test(t_icD_128K_8K_l "/home/ubuntu/sponge_network/sponge/txrx.sh" "-icDd" "128K" "-w" "8K" "-l" "0.1")
add_test(t_icD_128K_8K_L "/home/ubuntu/sponge_network/sponge/txrx.sh" "-icDd" "128K" "-w" "8K" "-L" "0.1")
add_test(t_icD_128K_8K_lL "/home/ubuntu/sponge_network/sponge/txrx.sh" "-icDd" "128K" "-w" "8K" "-l" "0.1" "-L" "0.1")
add_test(t_isS_128K_8K_l "/home/ubuntu/sponge_network/sponge/txrx.sh" "-isSd" "128K" "-w" "8K" "-l" "0.1")
add_test(t_isS_128K_8K_L "/home/ubuntu/sponge_network/sponge/txrx.sh" "-isSd" "128K" "-w" "8K" "-L" "0.1")
add_test(t_isS_128K_8K_lL "/home/ubuntu/sponge_network/sponge/txrx.sh" "-isSd" "128K" "-w" "8K" "-l" "0.1" "-L" "0.1")
add_test(t_isR_128K_8K_l "/home/ubuntu/sponge_network/sponge/txrx.sh" "-isRd" "128K" "-w" "8K" "-l" "0.1")
add_test(t_isR_128K_8K_L "/home/ubuntu/sponge_network/sponge/txrx.sh" "-isRd" "128K" "-w" "8K" "-L" "0.1")
add_test(t_isR_128K_8K_lL "/home/ubuntu/sponge_network/sponge/txrx.sh" "-isRd" "128K" "-w" "8K" "-l" "0.1" "-L" "0.1")
add_test(t_isD_128K_8K_l "/home/ubuntu/sponge_network/sponge/txrx.sh" "-isDd" "128K" "-w" "8K" "-l" "0.1")
add_test(t_isD_128K_8K_L "/home/ubuntu/sponge_network/sponge/txrx.sh" "-isDd" "128K" "-w" "8K" "-L" "0.1")
add_test(t_isD_128K_8K_lL "/home/ubuntu/sponge_network/sponge/txrx.sh" "-isDd" "128K" "-w" "8K" "-l" "0.1" "-L" "0.1")
add_test(t_icnS_128K_8K_l "/home/ubuntu/sponge_network/sponge/txrx.sh" "-icSnd" "128K" "-w" "8K" "-l" "0.1")
add_test(t_icnS_128K_8K_L "/home/ubuntu/sponge_network/sponge/txrx.sh" "-icSnd" "128K" "-w" "8K" "-L" "0.1")
add_test(t_icnS_128K_8K_lL "/home/ubuntu/sponge_network/sponge/txrx.sh" "-icSnd" "128K" "-w" "8K" "-l" "0.1" "-L" "0.1")
add_test(t_icnR_128K_8K_l "/home/ubuntu/sponge_network/sponge/txrx.sh" "-icRnd" "128K" "-w" "8K" "-l" "0.1")
add_test(t_icnR_128K_8K_L "/home/ubuntu/sponge_network/sponge/txrx.sh" "-icRnd" "128K" "-w" "8K" "-L" "0.1")
add_test(t_icnR_128K_8K_lL "/home/ubuntu/sponge_network/sponge/txrx.sh" "-icRnd" "128K" "-w" "8K" "-l" "0.1" "-L" "0.1")
add_test(t_icnD_128K_8K_l "/home/ubuntu/sponge_network/sponge/txrx.sh" "-icDnd" "128K" "-w" "8K" "-l" "0.1")
add_test(t_icnD_128K_8K_L "/home/ubuntu/sponge_network/sponge/txrx.sh" "-icDnd" "128K" "-w" "8K" "-L" "0.1")
add_test(t_icnD_128K_8K_lL "/home/ubuntu/sponge_network/sponge/txrx.sh" "-icDnd" "128K" "-w" "8K" "-l" "0.1" "-L" "0.1")
add_test(t_isnS_128K_8K_l "/home/ubuntu/sponge_network/sponge/txrx.sh" "-isSnd" "128K" "-w" "8K" "-l" "0.1")
add_test(t_isnS_128K_8K_L "/home/ubuntu/sponge_network/sponge/txrx.sh" "-isSnd" "128K" "-w" "8K" "-L" "0.1")
add_test(t_isnS_128K_8K_lL "/home/ubuntu/sponge_network/sponge/txrx.sh" "-isSnd" "128K" "-w" "8K" "-l" "0.1" "-L" "0.1")
add_test(t_isnR_128K_8K_l "/home/ubuntu/sponge_network/sponge/txrx.sh" "-isRnd" "128K" "-w" "8K" "-l" "0.1")
add_test(t_isnR_128K_8K_L "/home/ubuntu/sponge_network/sponge/txrx.sh" "-isRnd" "128K" "-w" "8K" "-L" "0.1")
add_test(t_isnR_128K_8K_lL "/home/ubuntu/sponge_network/sponge/txrx.sh" "-isRnd" "128K" "-w" "8K" "-l" "0.1" "-L" "0.1")
add_test(t_isnD_128K_8K_l "/home/ubuntu/sponge_network/sponge/txrx.sh" "-isDnd" "128K" "-w" "8K" "-l" "0.1")
add_test(t_isnD_128K_8K_L "/home/ubuntu/sponge_network/sponge/txrx.sh" "-isDnd" "128K" "-w" "8K" "-L" "0.1")
add_test(t_isnD_128K_8K_lL "/home/ubuntu/sponge_network/sponge/txrx.sh" "-isDnd" "128K" "-w" "8K" "-l" "0.1" "-L" "0.1")
subdirs("libsponge")
subdirs("apps")
subdirs("tests")
subdirs("doctests")
