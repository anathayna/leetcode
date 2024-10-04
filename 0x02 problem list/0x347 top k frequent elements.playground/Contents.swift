import Foundation

class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var frequencyMap: [Int:Int] = [:]
        
        for num in nums {
            frequencyMap[num, default: 0] += 1
        }
        
        var buckets = Array(repeating: [Int](), count: nums.count+1)
        
        for (num, freq) in frequencyMap {
            buckets[freq].append(num)
        }
        
        var result: [Int] = []
        
        for i in (0 ..< buckets.count).reversed() {
            result += buckets[i]
            
            if result.count == k {
                break
            }
        }
        
        return result
    }
}

Solution().topKFrequent([1,1,1,2,2,3], 2)
Solution().topKFrequent([1], 1)
