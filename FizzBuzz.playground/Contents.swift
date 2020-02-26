//: A UIKit based Playground for presenting user interface
  
import UIKit

//MARK: - This project is implementing an algorithm called FizzBuzz

/*
 
 This algorithm wants us to print an array of numbers from 1 to 15
 Catch:
 We have to print it in such a way that we replaces the multiples of 3 as Fizz and multiples of 5 as Buzz
 till we reach 15 when we get FizzBuzz
 
 */


var numbers = Array(1...1000)

for num in numbers {
    if num % 3 == 0 && num % 5 == 0 {
        print("\(num) FizzBuzz")
    }
    else if num % 3 == 0 {
        print("\(num) Fizz")
    }
    else if num % 5 == 0 {
        print("\(num) Buzz")
    }
    else {
        print(num)
    }
}
