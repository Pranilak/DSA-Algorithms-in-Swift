import UIKit

//MARK: - reverse every other word and remove vowels

extension String {
    func stringByRemovingVowels() -> String {
        var newWord = self
        for val in ["a","e","i","o","u"] {
            newWord = newWord.replacingOccurrences(of: val, with: "")
        }
        return newWord
    }
}


func reverseWordsInSentence(sentence: String) -> String {
    let allWords = sentence.components(separatedBy: " ")
    var newSentence = ""
    for (index, word) in allWords.enumerated() {
        if newSentence != "" {
            newSentence += " "
        }
        
        if index%2 == 0 {
            let reversedWord = String(word.reversed())
            newSentence += reversedWord.stringByRemovingVowels()
        }
        else {
            newSentence += word.stringByRemovingVowels()
        }
    }
    return newSentence
}

var str = "Hello, playground this is the worlds longest word reversed with no vowels neumonoultramicroscopicsilicovolcanoconiosis"
print(reverseWordsInSentence(sentence: str))


//MARK: - Filter function

let numbers = [1,2,3,4,3,3]

var filteredArray = [Int]()

print(numbers.filter({return $0 % 3 == 0}))

//MARK: - Map

print(numbers.map({ return $0*2 }))

//MARK: - Reduce

let sum = numbers.reduce(0, {sum, number in sum + number})
