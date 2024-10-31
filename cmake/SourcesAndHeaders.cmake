

set(sources
    src/tmp.cpp
    src/map_utils.cpp
)

set(exe_sources
		src/main.cpp
		${sources}
)

set(headers
    include/project/tmp.hpp
    include/map_utils.hpp
)

set(test_sources
    src/tmp_test.cpp
)
