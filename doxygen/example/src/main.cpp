/**
 * @file main.cpp
 * @brief Demo program that uses the Calculator class.
 */

#include <iostream>
#include "calculator.h"

/**
 * @brief Program entry point.
 * @return 0 on success.
 */
int main() {
    Calculator calc;
    std::cout << "2 + 3 = " << calc.add(2, 3) << "\n";
    std::cout << "10 - 4 = " << calc.subtract(10, 4) << "\n";
    std::cout << "6 * 7 = " << calc.multiply(6, 7) << "\n";
    try {
        calc.divide(1, 0);
    } catch (const std::invalid_argument &e) {
        std::cout << "Error: " << e.what() << "\n";
    }
    std::cout << "Last result: " << calc.getLastResult() << "\n";
    return 0;
}
