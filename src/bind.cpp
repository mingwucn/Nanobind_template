#include <nanobind/nanobind.h>
#include "cal/cal.hpp"

NB_MODULE(cpp_utils, m)
{
    m.def("mul", &mul);
    m.def("add", &add);
}