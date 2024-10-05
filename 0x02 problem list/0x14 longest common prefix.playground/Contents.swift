import Foundation

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.isEmpty {
            return ""
        }
        
        var prefix = strs[0]
        
        for index in 1..<strs.count {
            while !strs[index].hasPrefix(prefix) {
                prefix = String(prefix.dropLast())
                
                if prefix.isEmpty {
                    return ""
                }
            }
        }
        
        return prefix
    }
}

Solution().longestCommonPrefix(["flower","flow","flight"])
Solution().longestCommonPrefix(["dog","racecar","car"])
