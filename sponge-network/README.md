## NOTICE on starter:
- I met a struggle on build the `make` after `cmake`. After 3 hours of debugging, I found choosing GNU 8.4.0 to compiler is the perfect one.
`sudo apt update && sudo apt install gcc-8 g++-8`
`sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-8 800`
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`--slave /usr/bin/g++ g++ /usr/bin/g++-8`
-> Remember to export or config `CC` and `CXX` on running `cmake`
- On the last exercise, init private on h++ file and method on c++. I feel this lab is hard to understand at first but easier to implement than the ex 3.
