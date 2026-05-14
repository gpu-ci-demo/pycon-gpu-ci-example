add_library(example_impl OBJECT src/square.cu)
target_include_directories(example_impl PUBLIC include/)
target_compile_options(example_impl
  PRIVATE
  $<$<COMPILE_LANGUAGE:CUDA>:--expt-extended-lambda>)
set_target_properties(example_impl PROPERTIES POSITION_INDEPENDENT_CODE ON)
