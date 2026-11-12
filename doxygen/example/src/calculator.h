/**
 * @file calculator.h
 * @brief Declaration of the Calculator class.
 * @author Suraj Pathak
 * @version 1.0
 * @date 2026
 */

#ifndef CALCULATOR_H
#define CALCULATOR_H

#include <stdexcept>

/**
 * @brief Supported arithmetic operations.
 */
enum class Operation {
    Add,      ///< Addition
    Subtract, ///< Subtraction
    Multiply, ///< Multiplication
    Divide    ///< Division
};

/**
 * @class Calculator
 * @brief A simple calculator that performs basic arithmetic.
 *
 * The calculator keeps the result of the last operation so that
 * it can be read with getLastResult().
 *
 * @code
 * Calculator calc;
 * double sum = calc.add(2, 3);   // 5
 * @endcode
 */
class Calculator {
public:
    /** @brief Constructs a calculator with the last result set to 0. */
    Calculator();

    /**
     * @brief Adds two numbers.
     * @param a First operand.
     * @param b Second operand.
     * @return The sum a + b.
     */
    double add(double a, double b);

    /**
     * @brief Subtracts b from a.
     * @param a Value to subtract from.
     * @param b Value to subtract.
     * @return The difference a - b.
     */
    double subtract(double a, double b);

    /**
     * @brief Multiplies two numbers.
     * @param a First factor.
     * @param b Second factor.
     * @return The product a * b.
     */
    double multiply(double a, double b);

    /**
     * @brief Divides a by b.
     * @param a Dividend.
     * @param b Divisor, must not be zero.
     * @return The quotient a / b.
     * @throws std::invalid_argument if @p b is zero.
     * @warning Dividing by zero is not allowed.
     */
    double divide(double a, double b);

    /**
     * @brief Applies an operation to two numbers.
     * @param op The operation to perform.
     * @param a First operand.
     * @param b Second operand.
     * @return The result of the operation.
     * @see Operation
     */
    double compute(Operation op, double a, double b);

    /**
     * @brief Returns the result of the most recent operation.
     * @return The last result, or 0 if no operation has been performed.
     */
    double getLastResult() const;

private:
    double lastResult_; ///< Result of the last operation
};

#endif // CALCULATOR_H
