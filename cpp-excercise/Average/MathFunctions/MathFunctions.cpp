#include "MathFunctions.h"
#include "myaverage.h"

// Hide the implementation details
namespace mathfunctions {
  double average(const std::vector<double> numbers)
  {
    return detail::myaverage(numbers);
  }
}