import Foundation

/*
faça uma função que recebe uma string de números separados por espaço e retorne o maior e o menor número, como string.

highLow("1 4 2 9") // -> "9 1"
highLow("3") // -> "3 3"
highLow("-1 2 3") // -> "3 -1"
*/

func highLow(_ string: String) -> String? {
    let stringToInt = string.split(separator: " ").compactMap { Int($0) }
    
    guard let first = stringToInt.first else { return nil }
    
    var highValue = first
    var lowValue = first
    
    stringToInt.forEach { number in
        if number > highValue { highValue = number }
        if number < lowValue { lowValue = number }
    }
    
    return "\(highValue) \(lowValue)"
}

highLow("1 4 2 9")
highLow("3")
highLow("-1 2 3")
