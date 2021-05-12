cmake_minimum_required(VERSION 3.19)
project(InvokeConvertImage)

set(CMAKE_CXX_STANDARD 14)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fsanitize=leak -O1")
add_executable(InvokeConvertImage main.cpp)

set(CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake;${CMAKE_MODULE_PATH}")
find_package(ConvertImage)

if (CONVERT_IMAGE_FOUND)
    target_link_libraries(InvokeConvertImage ${CONVERT_IMAGE_LIB_PATH})
else (CONVERT_IMAGE_FOUND)
    message(FATAL_ERROR "ConvertImage not found")
    endif()