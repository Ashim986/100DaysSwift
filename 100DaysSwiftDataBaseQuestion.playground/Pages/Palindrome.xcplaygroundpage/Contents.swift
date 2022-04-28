//: [Previous](@previous)

import Foundation

extension String {
    var isPalindrome: Bool {
        self == String(self.reversed())
    }
}

func isPalindrome(_ x: Int) -> Bool {
    let stringValue = "\(x)"
    
    guard stringValue.count != 0 else { return false }
    
    return stringValue.isPalindrome
}

let testValue = isPalindrome(0)

print(testValue)

