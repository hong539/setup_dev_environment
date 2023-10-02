# c++

## standard

* [C++ Standards Support in GCC](https://gcc.gnu.org/projects/cxx-status.html)
* c++98
* c++11/c++17

## tips/guides/roadmap

* [C++ Developer Roadmap](https://roadmap.sh/cpp)
* [w3schools/C++ Introduction](https://www.w3schools.com/cpp/cpp_intro.asp)
* [Omitting Namespace](https://www.w3schools.com/cpp/cpp_syntax.asp)

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