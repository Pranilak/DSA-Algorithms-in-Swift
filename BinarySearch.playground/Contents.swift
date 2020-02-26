//: A UIKit based Playground for presenting user interface
  
import UIKit

//MARK: - This playground is a solution for the algorithm "Binary Search"

/*
 
 */


var numbers = [Int]()

for _ in 1...10 {
    numbers.append(Int.random(in: 1..<100))
    numbers.shuffle()
}

print("[Random array generated] \(numbers)")

extension Array {
    func linearSearchInt (find: Int) -> Bool{
        for (index, number) in self.enumerated() {
            if let num = number as? Int {
                if find == num {
                    print("Found at index \(index + 1)")
                    return true
                }
            }
            else {
                print("[ERROR] This function is only for searching integer in integer array")
                return false
            }
        }
        return false
    }
    
    
    func binarySearchforSortedIntArray(find: Int) -> Bool {
        var leftIndex = 0
        var rightIndex = self.count - 1
        
        while leftIndex <= rightIndex {
            let middleIndex = (leftIndex + rightIndex) / 2
            let middleValue = self[middleIndex] as? Int
            
            if middleValue == find {
                print("Found at index: \(middleIndex + 1)")
                return true
            }
            if find < middleValue! {
                rightIndex = middleIndex - 1
            }
            if find > middleValue! {
                leftIndex = middleIndex + 1
            }
        }
        return false
    }
}

let elementToBeSearched = numbers.randomElement()
print("[Element to be searched] \(elementToBeSearched!)")

print("[Linear Search]{=========================>")
numbers.linearSearchInt(find: elementToBeSearched!)

numbers.sort()
print("[Sorted Array] \(numbers)")


print("[Binary Search]{=========================>")
numbers.binarySearchforSortedIntArray(find: elementToBeSearched!)





