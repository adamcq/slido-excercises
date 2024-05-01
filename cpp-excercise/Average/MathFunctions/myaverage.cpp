#include <vector> 
#include "myaverage.h"

namespace mathfunctions {
  namespace detail {
    double myaverage(const std::vector<double> numbers) {
      if (numbers.size() == 0) {
        return 0;
      }
      double average = 0;
      for (double num : numbers) {
        average += num;
      }
      return (double)average / numbers.size();
    }
  }
}