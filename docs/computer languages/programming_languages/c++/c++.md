# c++

## standard

* [C++ Standards Support in GCC](https://gcc.gnu.org/projects/cxx-status.html)
* c++98
* c++11/c++17

## tips/guides/roadmap

* [Standard output (cout)](https://cplusplus.com/doc/tutorial/basic_io/)
* [C++ Developer Roadmap](https://roadmap.sh/cpp)
* [w3schools/C++ Introduction](https://www.w3schools.com/cpp/cpp_intro.asp)
* [Omitting Namespace](https://www.w3schools.com/cpp/cpp_syntax.asp)
* [SRS4.0源码分析-序言 - 弦外之音](https://www.xianwaizhiyin.net/?p=947)

```c++
#include <iostream>
using namespace std;

int main() {
  cout << "Hello World!";
  return 0;
} 
```

```c++
#include <iostream>

int main() {
  std::cout << "Hello World!";
  return 0;
} 
```

* gcc/g++
  * [5 C++ Implementation-Defined Behavior](https://gcc.gnu.org/onlinedocs/gcc/C_002b_002b-Implementation.html)
* comile *.cpp source code files with g++/gcc

```shell
g++ -std=c++11 file.cpp -o output
gcc -std=c++11 file.cpp -o output

#-std
c++98
C++03
C++11
C++14
C++17
```

* [What the hell is stdafx.h?](https://learn.microsoft.com/en-us/cpp/build/creating-precompiled-header-files?view=msvc-170)

## Libraries/Packages/Frameworks/Apps

* [electron](https://github.com/electron/electron)
* [srs](https://github.com/ossrs/srs)
  * SRS is a simple, high-efficiency, real-time video server supporting RTMP, WebRTC, HLS, HTTP-FLV, SRT, MPEG-DASH, and GB28181.
* [opencv](https://github.com/opencv/opencv)