import Foundation

/*
 dada uma lista de números:
 
 [1, 2, 5]
 [3, 4, 8, 10]
 [10, 3, 4, 8]
 
 é preciso encontrar a soma dos que estão faltando
 
 [1, 2, 5] -> 3+4 = 7
 [3, 4, 8, 10] -> 5+6+7+9 = 27
 [10, 3, 4, 8] -> 5+6+7+9 = 27

*/

func missingValueSum(_ array: [Int]) -> Int? {
    guard let min = array.min(),
          let max = array.max() else { return nil }
    
    let soma = array.reduce(0, +)
    let total = (min+max)*(max-min+1)/2
    let result = total - soma

    return result
}

missingValueSum([1, 2, 5])
missingValueSum([3, 4, 8, 10])
missingValueSum([10, 3, 4, 8])
