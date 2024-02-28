import Foundation

// time complexity O(m+n)

class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        var result: String = ""
        let m = word1.count
        let n = word2.count
        var i = 0, j = 0
        
        if m >= 1 && n <= 100 {
            while i < m || j < n {
                if i < m {
                    let index = word1.index(word1.startIndex, offsetBy: i)
                    result.append(word1[index])
                    i+=1
                }
                
                if j < n {
                    let index = word2.index(word2.startIndex, offsetBy: j)
                    result.append(word2[index])
                    j+=1
                }
            }
        }
        
        return result
    }
}

let solution = Solution()

solution.mergeAlternately("abc", "pqr")
//solution.mergeAlternately("ab", "pqrs")
//solution.mergeAlternately("abcd", "pq")

/*
 tentativa 1:
 
 func mergeAlternately(_ word1: String, _ word2: String) -> String {
     var array1: [Character] = []
     var array2: [Character] = []
     var result: String = ""
     let m = word1.count
     let n = word2.count
     var i = 0, j = 0
     
     if m >= 1 && n <= 100 {
         while i < m || j < n {
             if i < m {
                 word1.forEach { i in
                     array1.append(i)
                 }
                 
                 result.append(array1[i])
                 i+=1
             }
             
             if j < n {
                 word2.forEach { j in
                     array2.append(j)
                 }
                 
                 result.append(array1[j])
                 j+=1
             }
         }
     }
     
     return result
 }
 
 outra alternativa:
 
 func mergeAlternately(_ word1: String, _ word2: String) -> String {
     var result: String = ""
     let n = max(word1.count, word2.count)
     
     for i in 0..<n {
         if i < word1.count {
             let index = word1.index(word1.startIndex, offsetBy: i)
             result += String(word1[index])
         }
         
         if i < word2.count {
             let index = word2.index(word2.startIndex, offsetBy: i)
             result += String(word2[index])
         }
     }
     
     return result
 }
 
 */
