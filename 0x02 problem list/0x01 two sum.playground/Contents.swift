import Foundation

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        // two-pass hash table
        var hashmap: [Int: Int] = [:]
                
        for i in 0..<nums.count {
            hashmap[nums[i]] = i
        }
        
        for i in 0..<nums.count {
            let complement = target - nums[i]
            if let complementIndex = hashmap[complement], complementIndex != i {
                return [i, complementIndex]
            }
        }
        
        return []
    }
}

Solution().twoSum([2, 7, 11, 15], 9)
Solution().twoSum([3, 2, 4], 6)
Solution().twoSum([3, 3], 6)

/*
 // brute force approach
 for i in 0..<nums.count {
     for j in (i+1)..<nums.count {
         if nums[j] == target - nums[i] {
             return [i, j]
         }
     }
 }
 */
