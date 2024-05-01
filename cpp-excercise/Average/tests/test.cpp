#include "gtest/gtest.h"
#include "MathFunctions.h"

TEST(AverageTest, BasicTest) {
  std::vector<double> numbers = {1, 2, 3, 4, 5};
  double expected = 3.0;
  ASSERT_EQ(mathfunctions::average(numbers), expected);
}

TEST(AverageTest, EmptyTest) {
  std::vector<double> numbers = {};
  double expected = 0.0;
  ASSERT_EQ(mathfunctions::average(numbers), expected);
}

TEST(AverageTest, NegativeTest) {
  std::vector<double> numbers = {-1, -2, -3, -4, -5};
  double expected = -3.0;
  ASSERT_EQ(mathfunctions::average(numbers), expected);
}

TEST(AverageTest, ZeroTest) {
  std::vector<double> numbers = {0, 0, 0, 0, 0};
  double expected = 0.0;
  ASSERT_EQ(mathfunctions::average(numbers), expected);
}

TEST(AverageTest, OneElementTest) {
  std::vector<double> numbers = {1};
  double expected = 1.0;
  ASSERT_EQ(mathfunctions::average(numbers), expected);
}

TEST(AverageTest, DecimalTest) {
  std::vector<double> numbers = {1.5, 2.5, 3.5, 4.5, 5.5};
  double expected = 3.5;
  ASSERT_EQ(mathfunctions::average(numbers), expected);
}

int main(int argc, char **argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}