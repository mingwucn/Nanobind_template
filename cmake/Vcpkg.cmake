# if(${PROJECT_NAME}_ENABLE_VCPKG)  
message(STATUS "Using vcpkg...")
  #
  # If `vcpkg.cmake` (from https://github.com/microsoft/vcpkg) does not exist, download it.
  #
  # if(NOT EXISTS "${CMAKE_BINARY_DIR}/vcpkg.cmake")
  #   message(
  #   STATUS
  #       "Downloading `vcpkg.cmake` from https://github.com/microsoft/vcpkg..."
  #   )
  #   file(DOWNLOAD "https://github.com/microsoft/vcpkg/raw/master/scripts/buildsystems/vcpkg.cmake"
  #   "${CMAKE_BINARY_DIR}/vcpkg.cmake"
  #   )
  #   message(STATUS "Vcpkg config downloaded succesfully from github.")
  # endif()

	if(${PROJECT_NAME}_VERBOSE_OUTPUT)
		set(VCPKG_VERBOSE ON)
	endif()
	# set(CMAKE_TOOLCHAIN_FILE "${CMAKE_BINARY_DIR}/vcpkg.cmake")
	# set(CMAKE_TOOLCHAIN_FILE "${CMAKE_TOOLCHAIN_FILE}" "${CMAKE_BINARY_DIR}/vcpkg.cmake")
  
  # set(CMAKE_TOOLCHAIN_FILE "${CMAKE_BINARY_DIR}/vcpkg.cmake" CACHE STRING "Vcpkg toolchain file")
  set(CMAKE_TOOLCHAIN_FILE "$ENV{VCPKG_ROOT}/scripts/buildsystems/vcpkg.cmake" CACHE STRING "Vcpkg toolchain file")
  message(STATUS "Set Vcpkg toolchain file: $ENV{VCPKG_ROOT}/scripts/buildsystems/vcpkg.cmake")
# endif()
