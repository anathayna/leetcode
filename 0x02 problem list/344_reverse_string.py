class Solution:
    def reverseString(self, s: List[str]) -> None:
        """
        Do not return anything, modify s in-place instead.
        """

       for i in range(len(s)):
            s[len(s) - i - 1] = s[i]