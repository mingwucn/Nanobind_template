set(sources
    src/cal/cal.cpp
)

set(exe_sources
		src/main.cpp
		${sources}
)

set(headers
    include/cal/cal.hpp
)

set(test_sources
    src/tmp_test.cpp
)

set(bind_sources
    src/bind.cpp
    src/cal/cal.cpp
)