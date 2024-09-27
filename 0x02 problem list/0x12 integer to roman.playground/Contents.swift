import Foundation

class Solution {
    func intToRoman(_ num: Int) -> String {
        let digits: [(Int, String)] = [
            (1000, "M"),
            (900, "CM"),
            (500, "D"),
            (400, "CD"),
            (100, "C"),
            (90, "XC"),
            (50, "L"),
            (40, "XL"),
            (10, "X"),
            (9, "IX"),
            (5, "V"),
            (4, "IV"),
            (1, "I")
        ]
        
        var num = num
        var romanDigits: [String] = []
        
        for (value, symbol) in digits {
            if num == 0 {
                break
            }

            let count = num / value
            num %= value
            romanDigits.append(String(repeating: symbol, count: count))
        }
        
        return romanDigits.joined()
    }
}


Solution().intToRoman(3749)
Solution().intToRoman(1994)
Solution().intToRoman(58)
