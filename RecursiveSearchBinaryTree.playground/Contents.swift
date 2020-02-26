import UIKit

//1
/*
 
        10
       /  \
      5   14
     /   /  \
    1   11   20
 
 */

//2
class Node {
    let value: Int
    var leftChild: Node?
    var rightChild: Node?
    
    init(value: Int, leftChild: Node?, rightChild: Node?) {
        self.value = value
        self.leftChild = leftChild
        self.rightChild = rightChild
        
        print("Node \(self.value) created!")
    }
}

//level - 1
let oneLeftChild = Node(value: 1, leftChild: nil, rightChild: nil)
let elevenLeftChild = Node(value: 11, leftChild: nil, rightChild: nil)
let twentyRightChild = Node(value: 20, leftChild: nil, rightChild: nil)

//level - 2
let fiveLeftChild = Node(value: 5, leftChild: oneLeftChild, rightChild: nil)
let fourteenRightChild = Node(value: 14, leftChild: elevenLeftChild, rightChild: twentyRightChild)

//level - 3
let tenRootNode = Node(value: 10, leftChild: fiveLeftChild, rightChild: fourteenRightChild)

//3 - Implement a search algorithm that searches through this tree for a particular searchValue

func searchNode(node: Node?, searchValue: Int) -> Bool {
    if node == nil {
        return false
    }
    
    if node?.value == searchValue {
        return true
    }
    else if searchValue < node!.value {
        return searchNode(node: node?.leftChild, searchValue: searchValue)
    }
    else {
        return searchNode(node: node?.rightChild, searchValue: searchValue)
    }
}

//4 sample function call

searchNode(node: tenRootNode, searchValue: 15)
