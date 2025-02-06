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

func missingValueSum(_ array: [Int]) -> Int {
    guard let min = array.min(),
          let max = array.max() else { return 0 }
    
    let soma = array.reduce(0, +)
    let total = (min+max)*(max-min+1)/2
    let result = total - soma

    return result
}

func missingValuesSum(_ list: [Int]) -> Int {
    guard let min = list.min(),
          let max = list.max() else { return 0 }
    
    let interval = Set(min...max)
    let listNumbers = Set(list)
    let missingValues = interval.subtracting(listNumbers)

    return missingValues.reduce(0, +)
}

missingValueSum([1, 2, 5])
missingValueSum([3, 4, 8, 10])
missingValueSum([10, 3, 4, 8])
