/**
 * @file calculator.cpp
 * @brief Implementation of the Calculator class.
 */

#include "calculator.h"

Calculator::Calculator() : lastResult_(0.0) {}

double Calculator::add(double a, double b) {
    lastResult_ = a + b;
    return lastResult_;
}

double Calculator::subtract(double a, double b) {
    lastResult_ = a - b;
    return lastResult_;
}

double Calculator::multiply(double a, double b) {
    lastResult_ = a * b;
    return lastResult_;
}

double Calculator::divide(double a, double b) {
    if (b == 0.0) {
        throw std::invalid_argument("Division by zero");
    }
    lastResult_ = a / b;
    return lastResult_;
}

double Calculator::compute(Operation op, double a, double b) {
    switch (op) {
        case Operation::Add:      return add(a, b);
        case Operation::Subtract: return subtract(a, b);
        case Operation::Multiply: return multiply(a, b);
        case Operation::Divide:   return divide(a, b);
    }
    return 0.0;
}

double Calculator::getLastResult() const {
    return lastResult_;
}
