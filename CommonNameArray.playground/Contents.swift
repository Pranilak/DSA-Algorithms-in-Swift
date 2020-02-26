import UIKit

func mostCommonNameInArray(array: [String]) -> String {
    var nameCountDict = [String : Int]()
    
    for name in array {
        if let count = nameCountDict[name] {
            nameCountDict[name] = count + 1
        }
        else {
            nameCountDict[name] = 1
        }
    }
    
    var mostCommonName: String = ""
    
    for key in nameCountDict.keys {
        if mostCommonName == "" {
            mostCommonName = key
        } else {
            let count = nameCountDict[key]!
            if count > nameCountDict[mostCommonName]! {
                mostCommonName = key
            }
        }
        
        print("\(key): \(nameCountDict[key]!)")
    }
    print("Most common name: \(mostCommonName)")
    return mostCommonName
}


mostCommonNameInArray(array: ["bob", "jannet", "Bruce", "bob", "Bruce", "bob", "walley", "bob", "walley", "walley", "walley", "walley"])
