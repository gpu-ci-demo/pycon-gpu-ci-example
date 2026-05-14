#include <example/square.hpp>

#include <thrust/device_vector.h>
#include <thrust/transform.h>

std::vector<float> square(const std::vector<float>& in) {
  std::size_t n = in.size();
  thrust::device_vector<float> d_in(in);
  thrust::device_vector<float> d_out(n);
  thrust::transform(d_in.begin(), d_in.end(), d_out.begin(),
      [] __device__ (float x) { return x * x; });

  std::vector<float> h_out(n);
  thrust::copy(d_out.begin(), d_out.end(), h_out.begin());
  return h_out;
}
