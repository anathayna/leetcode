class Solution:
    def reverseString(self, s: List[str]) -> None:
        """
        Do not return anything, modify s in-place instead.
        """

        left = 0
        right = len(s) - 1

        while left < right:
            s[left], s[right] = s[right], s[left]
            left, right = left + 1, right - 1
            # aux = s[left]
            # s[left] = s[right]
            # s[right] = aux
            # left = left + 1 ou left += 1
            # right = right - 1 ou right -= 1