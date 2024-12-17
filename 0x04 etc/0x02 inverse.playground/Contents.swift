import Foundation

/*
faça o inverso

inverse("1 4 2 9") // -> "9 2 4 1"
inverse("3") // -> "3"
inverse("-1 2 3") // -> "3 2 -1"
 
inverse([1, 4, 2, 9]) // -> [9, 2, 4, 1]
inverse([3]) // -> [3]
inverse([-1, 2, 3]) // -> [3, 2, -1]

*/

func inverse(_ string: String) -> String? {
    var arrayOfStrings = string.split(separator: " ")
    let arrayCount = arrayOfStrings.count
    
    for i in 0..<arrayOfStrings.count / 2 {
        let aux = arrayOfStrings[i]
        arrayOfStrings[i] = arrayOfStrings[arrayCount - i - 1]
        arrayOfStrings[arrayCount - i - 1] = aux
    }
    
    return "\(arrayOfStrings)"
}

func inverse(_ array: [Int]) -> [Int]? {
    var arrayOfInts = array
    let arrayCount = arrayOfInts.count
    
    for i in 0..<arrayOfInts.count / 2 {
        let aux = arrayOfInts[i]
        arrayOfInts[i] = arrayOfInts[arrayCount - i - 1]
        arrayOfInts[arrayCount - i - 1] = aux
    }
    
    return arrayOfInts
}

inverse("1 4 2 9")
inverse("3")
inverse("-1 2 3")
 
inverse([1, 4, 2, 9])
inverse([3])
inverse([-1, 2, 3])
