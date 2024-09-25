import Foundation

class Solution {
    func romanToInt(_ s: String) -> Int {
        let roman: [String:Int] = [
            "I": 1,
            "V": 5,
            "X": 10,
            "L": 50,
            "C": 100,
            "D": 500,
            "M": 1000
        ]
        
        var result = 0
        var previousValue = 0
        
        for char in s.reversed() {
            let value = roman[String(char)] ?? 0
            if value < previousValue {
                result -= value
            } else {
                result += value
            }
            
            previousValue = value
        }
        
        return result
    }
}

Solution().romanToInt("MCMXIV")
