# sponge_network

- This is a space of my self-learning Computer Network from CS144 (Standford). Currently the main git page of class is down or got private.
- ❗️The original sponge is from https://github.com/vikshanker/sponge. I custom it onto doing lab. I disclaim all liability. If you intend to use it, please use it carefully. 
- Inbox if you need more resources relevant.

### References:
- [Handout](https://kangyupl.gitee.io/cs144.github.io)
- [Sponge Documentation](https://kangyupl.gitee.io/cs144.github.io/doc/lab0/annotated.html)

## Lab Workthrough:
### Lab 0:
<br><b>Problem:</b><br>
- I met a struggle on build the `make` after `cmake`. After 3 hours of debugging, I found choosing GNU 8.4.0 to compiler is the perfect one.
`sudo apt update && sudo apt install gcc-8 g++-8`
`sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-8 800`
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`--slave /usr/bin/g++ g++ /usr/bin/g++-8`
-> Remember to export or config `CC` and `CXX` on running `cmake`

<br><b>Answer:</b><br>
```cpp
void get_URL(const string &host, const string &path) {
    TCPSocket socket{};
    const Address addr(host, "http");
    socket.connect(addr);
    socket.write("GET " + path + " HTTP/1.1\r\n");
    socket.write("Host: " + host + " \r\n");
    socket.write("Connection: close \r\n\r\n");
    string these = socket.read();
    while (!socket.eof()) {
        string recvd = socket.read();
        cout << recvd;
    }
    socket.shutdown(2);
}
```

