import UIKit
import Foundation

func fizzbuzz(max: Int) {
    
    for i in 1...max {
        if (i % 15 == 0) {
            print("FizzBuzz")
        } else if (i % 3 == 0) {
            print("Fizz")
        } else if (i % 5 == 0) {
            print("Buzz")
        } else {
            print("\(i)")
        }
    }
}

fizzbuzz(max: 20)
