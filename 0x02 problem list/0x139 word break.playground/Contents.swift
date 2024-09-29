import Foundation

class Solution {
    // Top-Down Dynamic Programming
    // Time complexity: O(n^3)
    // Space complexity: O(n)
    
    private var s: String = ""
    private var wordDict: [String] = []
    private var memo: [Int] = []
    
    private func dp(_ i: Int) -> Bool {
        if i < 0 { return true }

        if memo[i] != -1 {
            return memo[i] == 1
        }

        for word in wordDict {
            if i - word.count + 1 < 0 {
                continue
            }
            
            let startIndex = s.index(s.startIndex, offsetBy: i - word.count + 1)
            let endIndex = s.index(s.startIndex, offsetBy: i+1)
            
            if s[startIndex..<endIndex] == word && dp(i - word.count) {
                memo[i] = 1
                return true
            }
        }
        
        memo[i] = 0
        return false
    }

    func wordBreak(_ s: String, _ wordDict: [String]) -> Bool {
        self.s = s
        self.wordDict = wordDict
        self.memo = Array(repeating: -1, count: s.count)
        return dp(s.count-1)
    }
}

Solution().wordBreak("leetcode", ["leet","code"])
Solution().wordBreak("leet", ["l","e","ee","le","lee"])
Solution().wordBreak("applepenapple", ["apple","pen"])
Solution().wordBreak("catsandog", ["cats","dog","sand","and","cat"])
Solution().wordBreak("bb", ["a","b","bbb","bbbb"])
