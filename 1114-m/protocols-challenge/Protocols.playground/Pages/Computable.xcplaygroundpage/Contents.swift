//: [Previous](@previous)

import Foundation

protocol Computable {
    func compute() -> Int
}

class Sum: Computable {
  var numbers = [1,2,3,4,5,6,7,8,9]
    func compute() -> Int {
        var sum: Int = 0
        for number in numbers {
            sum = sum + number
        }
        print(sum)
        return sum
    }
}

class Product: Computable {
  var numbers = [1,2,3,4,5,6,7,8,9]
    func compute() -> Int {
        var product: Int = 1
        for number in numbers {
            product = product * number
        }
        print(product)
        return product
    }
}

class CountCharacters: Computable {
  var string: String = "odinfeoivneflndwcnervbunlinwe;dqwmid"
    func compute() -> Int {
        let count = string.characters.count
        print(count)
        return count
    }
}

class Random: Computable {
    func compute() -> Int {
        let random = Int(arc4random())
        print(random)
        return random
    }
}

let sum = Sum()
let product = Product()
let countCharacters = CountCharacters()
let random = Random()

let arrayOfComputables: [Computable] = [sum, product, countCharacters, random]

/*:
 **Tasks**: 
 1. Uncomment above line and make the code compile (by implementing the `Computable` protocol in all the classes)
 2. Iterate over `arrayOfComputables`, _compute_ each result and print it to the console using `print`
 */

for computable in arrayOfComputables {
    computable.compute()
}

