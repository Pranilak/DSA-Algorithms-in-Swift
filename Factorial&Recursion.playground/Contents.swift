import UIKit

//MARK: - Factorial & Recursion practice.

func factorialOfValue(value: UInt) -> UInt {
    if value == 0{
        return 1
    }
    return value * factorialOfValue(value: value - 1)
}

print(factorialOfValue(value: 4))
