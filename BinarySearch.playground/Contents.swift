import UIKit

let array = [ 1, 2, 3, 4, 6, 7, 8, 9, 10, 12, 13, 15, 16, 17]

func binarySearch(value: Int, in array: [Int]) -> Bool {
    var leftIndex = 0
    var rightIndex = array.count - 1
    
    while leftIndex <= rightIndex {
        let middleIndex = (leftIndex + rightIndex) / 2
        let middleValue = array[middleIndex]
        
        print("middleIndex: \(middleIndex) middleValue: \(middleValue)")
        if middleValue == value {
            return true
        }
        if value < middleIndex {
            rightIndex = middleIndex
        }
        if value > middleIndex {
            leftIndex = middleIndex
        }
    }
    return false
}

print(binarySearch(value: 4, in: array))
