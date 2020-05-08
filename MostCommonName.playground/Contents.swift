import UIKit

let names = ["Mary", "John", "Smollet", "Jussie", "Mary"]

func getMostCommonString(strings: [String]) -> String {
    
    var countDictionary = [String: Int]()
    
    for string in strings {
        if let count = countDictionary[string] {
            countDictionary[string] = count + 1
        } else {
            countDictionary[string] = 1
        }
    }
    
    var mostCommonString = ""
    
    for key in countDictionary.keys {
        if mostCommonString == "" {
            mostCommonString = key
        } else {
            let count = countDictionary[key]
            if count > countDictionary[mostCommonString] {
                mostCommonString = key
            }
        }
    }
    
    return mostCommonString
}

getMostCommonString(strings: names)
