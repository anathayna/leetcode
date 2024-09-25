import Foundation

class Solution {
    func findTheDifference(_ s: String, _ t: String) -> Character {
        let extraChar: Character = " "
        
        for i in s {
            for j in t {
                if j != i {
                    return j
                }
            }
        }
        
        return extraChar
    }
}

let solution = Solution()

solution.findTheDifference("abcd", "abcde")
//solution.findTheDifference("", "y")
