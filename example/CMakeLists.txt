cmake_minimum_required(VERSION 3.26)
project(${SKBUILD_PROJECT_NAME} LANGUAGES CXX CUDA)

find_package(
  Python 3.12 REQUIRED COMPONENTS Interpreter
  Development.Module ${SKBUILD_SABI_COMPONENT})

find_package(nanobind CONFIG REQUIRED)

add_subdirectory(extension)

nanobind_add_module(example NB_STATIC STABLE_ABI extension.cpp)
target_link_libraries(example PRIVATE example_impl)

install(TARGETS example LIBRARY DESTINATION .)
