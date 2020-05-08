import UIKit

func factorial(number: UInt) -> UInt {
    
    if number == 0{
        return 1
    }
    
    var product: UInt = 1
    for i in 1...number {
        product = product * i
    }
    return product
}
print(factorial(number: 0))


func recursiveFactorial(number: UInt) -> UInt {
    if number == 0 {
        return 1
    }
    
    print(number)
    return number * recursiveFactorial(number: number - 1)
}

print(recursiveFactorial(number: 5))
