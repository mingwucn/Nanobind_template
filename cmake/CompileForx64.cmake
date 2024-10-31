set(CMAKE_INCLUDE_CURRENT_DIR ON)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)



set(CMAKE_SYSTEM_PROCESSOR x86_64)
# set(CMAKE_SYSTEM_NAME Linux)
# set(CMAKE_SYSTEM_PROCESSOR x86_64)

if (CMAKE_BUILD_TYPE STREQUAL "Debug")
    add_definitions(-DEBUG_LOG_1)
endif()

if (CMAKE_BUILD_TYPE STREQUAL "Release")
    add_definitions(-DEBUG_LOG_0)
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${PROJECT_SOURCE_DIR}/release/")
    set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${PROJECT_SOURCE_DIR}/release/")
    set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${PROJECT_SOURCE_DIR}/release/")
endif()
option(ENABLE_DEBUG "Enable debug output" OFF)

# # Set the build type to Release if not already specified
# if(NOT CMAKE_BUILD_TYPE)
#     set(CMAKE_BUILD_TYPE "Release" CACHE STRING "Choose Release or Debug" FORCE)
# endif()

if (CMAKE_CXX_COMPILER_ID MATCHES "GNU")
    set(VCPKG_TARGET_TRIPLET x64-mingw)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wno-all")
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -m64")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -m64")

    set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -O3 -march=native -fopenmp -DLOGLEVEL=3 -static-libstdc++ -static-libgcc")
elseif(CMAKE_CXX_COMPILER_ID MATCHES "MSVC")
    set(VCPKG_TARGET_TRIPLET x64-windows)
    set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} /O2 /MT") # /DLOGLEVEL=3 /openmp /arch:AVX2")
    set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} /MTd")
endif()
message(STATUS "Compile with :${CMAKE_CXX_FLAGS_RELEASE}")
