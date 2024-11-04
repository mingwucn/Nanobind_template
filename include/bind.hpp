#include <nanobind/nanobind.h>
#include "cal.hpp"

NB_MODULE(cpp_utils, m)
{
    m.def("add", &add);
}