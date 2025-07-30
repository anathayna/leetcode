class Solution:
    def sortedSquares(self, nums: List[int]) -> List[int]:
        result = []
        for i in nums:
            result.append(i*i)
            
        result.sort()
        return result # 5ms O(n log n)

    def sortedSquares(self, nums: List[int]) -> List[int]:
        result = [0] * len(nums)
        left, right = 0, len(nums) - 1
        pos = len(nums) - 1

        while left <= right:
            if abs(nums[left]) > abs(nums[right]):
                result[pos] = nums[left] ** 2
                left += 1
            else:
                result[pos] = nums[right] ** 2
                right -= 1
            pos -= 1

        return result # 5ms O(n)