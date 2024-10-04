import Foundation

class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        let numSet = Set(nums)
        var longestStreak = 0
        
        for num in nums {
            if !numSet.contains(num-1) {
                var currentNum = num
                var currentStreak = 1
                
                while numSet.contains(currentNum + 1) {
                    currentNum += 1
                    currentStreak += 1
                }
                
                longestStreak = max(longestStreak, currentStreak)
            }
        }
        
        return longestStreak
    }
}

Solution().longestConsecutive([100,4,200,1,3,2])
Solution().longestConsecutive([0,3,7,2,5,8,4,6,0,1])
