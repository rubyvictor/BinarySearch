//: Playground - noun: a place where people can play

import UIKit

let numbers = [1,2,4,6,8,9,11,13,16,17,20]

var hundred = [Int]()
for i in 1...100 {
    hundred.append(i)
}

//Lower the number of iterations in the loop by finding the middle value, then looping the array to the left and right of the middle value. ie. perform the search Log(n) times
func binarySearchForSearchValue(searchValue: Int, array: [Int]) -> Bool {
    
    var leftIndex = 0
    var rightIndex = array.count - 1
    
    while leftIndex <= rightIndex {
        let middleIndex = (leftIndex + rightIndex) / 2
        let middleValue = array[middleIndex]
        
        print("middleValue: \(middleValue), leftIndex: \(leftIndex), rightIndex: \(rightIndex), (\(array[leftIndex])), (\(array[rightIndex]))")
        
        if middleValue == searchValue {
            return true
        }
        if searchValue < middleValue {
            rightIndex = middleIndex - 1
        }
        
        if searchValue > middleValue {
            leftIndex = middleIndex + 1
        }
        
    }
    return false
    
}

//Switch the appropriate arrays to search:
print(binarySearchForSearchValue(searchValue: 99, array: hundred))


//func linearSearchForSearchValue(searchValue: Int, array: [Int]) -> Bool {
//
//    for num in array {
//        if num == searchValue {
//            return true
//        }
//    }
//    return false
//}
//
//print(linearSearchForSearchValue(searchValue: 88, array: numbers))
