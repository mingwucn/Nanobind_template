cmake_minimum_required(VERSION 3.20)
include(cmake/Vcpkg.cmake)

#
# Project details
#

project(
    "Pybind"
    VERSION 0.1.0
    LANGUAGES CXX
)

message(STATUS "Started CMake for ${PROJECT_NAME} v${PROJECT_VERSION}...\n")
include(cmake/CompileForx64.cmake)
# include(cmake/StandardSettings.cmake)
# include(cmake/StaticAnalyzers.cmake)
# include(cmake/Utils.cmake)
include(cmake/SourcesAndHeaders.cmake)
include(cmake/nanobind.cmake)