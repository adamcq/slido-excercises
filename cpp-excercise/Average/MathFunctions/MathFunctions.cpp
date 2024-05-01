#include "MathFunctions.h"
#include "myaverage.h"

namespace mathfunctions {
  double average(const std::vector<double> numbers)
  {
    return detail::myaverage(numbers);
  }
}