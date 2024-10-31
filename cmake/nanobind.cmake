if (CMAKE_VERSION VERSION_LESS 3.18)
    set(DEV_MODULE Development)
else()
    set(DEV_MODULE Development.Module)
endif()
find_package(Python 3.11 COMPONENTS Interpreter ${DEV_MODULE} REQUIRED)

execute_process(
    COMMAND "${Python_EXECUTABLE}" -m nanobind --cmake_dir
    OUTPUT_STRIP_TRAILING_WHITESPACE OUTPUT_VARIABLE nanobind_ROOT)
find_package(nanobind REQUIRED)

# add_subdirectory(${PROJECT_SOURCE_DIR}/ext/nanobind)
# include_directories(${PROJECT_SOURCE_DIR}/ext/nanobind/include)
