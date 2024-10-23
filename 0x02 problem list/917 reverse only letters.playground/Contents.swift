import Foundation

class Solution {
    func reverseOnlyLetters(_ s: String) -> String {
        var sArray = Array(s)
        var left = 0
        var right = sArray.count-1
        
        while left < right {
            if !sArray[left].isLetter {
                left += 1
            } else if !sArray[right].isLetter {
                right -= 1
            } else {
                // sList.swapAt(left, right)
                let aux = sArray[right]
                sArray[right] = sArray[left]
                sArray[left] = aux
                
                left += 1
                right -= 1
            }
        }
        
        return String(sArray)
    }
}

Solution().reverseOnlyLetters("ab-cd")
Solution().reverseOnlyLetters("a-bC-dEf-ghIj")
Solution().reverseOnlyLetters("Test1ng-Leet=code-Q!")
