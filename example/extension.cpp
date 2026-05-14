#include <example/square.hpp>
#include <nanobind/nanobind.h>
#include <nanobind/stl/vector.h>

NB_MODULE(example, m) {
  m.def("square", &square);
}
