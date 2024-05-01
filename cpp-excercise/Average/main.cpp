// C++ program to read numbers from a file and calculate their average
#include <fstream> 
#include <iostream> 
#include <vector>
#include <string>
#include <cmath>
#include "MathFunctions.h"
#include "AverageConfig.h"

int main(int argc, char* argv[])
{
  if (argc < 2) {
    // report version
    std::cout << argv[0] << " Version " << Average_VERSION_MAJOR << "."
              << Average_VERSION_MINOR << std::endl;
    std::cout << "Usage: " << argv[0] << " <fileName>" <<  std::endl;
    return 1;
  }

  // Open the input file named "input.txt" 
  std::ifstream inputFile(argv[1]);
  if (!inputFile) {
      std::cerr << "Error: Unable to open file " << argv[1] << std::endl;
      return 1;
  }

  // read numbers into a vector
  std::vector<double> numbers;
  double num;
  while (inputFile >> num) {
      numbers.push_back(num);
  }
  inputFile.close();

  // compute the output value
  const double outputValue = mathfunctions::average(numbers);

  // print the average
  std::cout << "Average: " << outputValue << std::endl;

  return 0; 
}
