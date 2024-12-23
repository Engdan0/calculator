#include <iostream>
#include "calculator.h"

int main() {
    Calculator calc;

    double a = 5.0, b = 3.0;

    std::cout << "Addition of " << a << " and " << b << " is: " << calc.Add(a, b) << std::endl;
    std::cout << "Subtraction of " << a << " and " << b << " is: " << calc.Sub(a, b) << std::endl;

    return 0;
}
