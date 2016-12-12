import Foundation

/*:
 
 ### Closures
 
 In this playground, you will work on a few examples that are using closures and the concept of passing functions as arguments into other functions.
 
 Here is some code that you will use in one of the challenges.
 
 */

// computes the sum of all digits in integer a; relevant for task 5
func sumOfDigits(a: Int) -> Int {
  return String(a).characters.flatMap{Int(String($0))}.reduce(0, +)
}
sumOfDigits(a: 123) // 6

//:
//
// ### Challenges:
//
// 1. Write a function called `doesApply` that returns a `Bool` and takes as arguments two `Int`s as well as a _function_ which again also takes two `Int`s and returns a `Bool`.

func doesApply (a: Int, b: Int, someFunction: (Int, Int) -> Bool) -> Bool {
  return someFunction(a, b)
}

// 2. Write a function called `areBothDivisibleByThree` that takes two `Int`s as arguments and returns `true` if both are divisible by the number 3 (i.e. there is no remainder after having done the division), `false` otherwise.

func areBothDivisibleByThree (a: Int, b: Int) -> Bool {
  let remainderA = a % 3
  let remainderB = b % 3
  if remainderA == 0 && remainderB == 0 {
    return true
  } else {
    return false
  }
  
}

// 3. Use `doesApply` in combination with `areBothDivisibleByThree` to figure out whether 47685 and 344832 are both divisible by the number 3.

doesApply(a: 47685, b: 344832, someFunction: areBothDivisibleByThree)

// 4. Use `doesApply` to figure out whether 85436 and 53893 are both divisible by three but passing the third argument as a closure (so you can't use the previously defined `areBothDivisibleByThree` any more).

doesApply(a: 85436, b: 53893, someFunction: {(a: Int, b: Int) -> Bool in
  let remainderA = a % 3
  let remainderB = b % 3
  if remainderA == 0 && remainderB == 0 {
    return true
  } else {
    return false
  }
})

// 5. Use `doesApply` to find out if the sums of the digits of `a` and `b` are the same (you can use the function `sumOfDigits` that is defined above for this task).

doesApply(a: 85436, b: 53893, someFunction: {(a: Int, b: Int) -> Bool in
  let sumA = sumOfDigits(a: a)
  let sumB = sumOfDigits(a: b)
  if sumA == sumB {
    return true
  } else {
    return false
  }
  
} )

doesApply(a: 85436, b: 53893) {
  let sumA = sumOfDigits(a: $0)
  let sumB = sumOfDigits(a: $1)
  if sumA == sumB {
    return true
  } else {
    return false
  }
}

// 6. Write a function called `manipulateStrings` that returns an _optional_ `String` (so, the return type of the function is `String?`) and takes two `String`s as argument as well as another function that takes two `String`s and returns an _optional_ `String`.

func manipulateStrings (a: String, b: String, anotherFunction: (String, String) -> String?) -> String? {
  return anotherFunction(a, b)
}

// 7. Write a function called `concatenateSmallStrings` that takes two `String`s and returns an _optional_ `String`. If both input arguments have less than 5 characters, return the two `String`s concatenated, otherwise return `nil`.

func concatenateSmallStrings(a: String, b: String) -> String? {
  if a.characters.count < 5 && b.characters.count < 5 {
    return a + b
  } else {
    return nil
  }
}

// 8. Use the `manipulateStrings` function in combination with the `concatenateSmallStrings` and try to concatenate `"abc"` and `"def"` as well as `"abcdef"` and `"ghijkl"`. What do the calls return?

manipulateStrings(a: "abc", b: "def", anotherFunction: concatenateSmallStrings)

manipulateStrings(a: "abcdef", b: "ghijkl", anotherFunction: concatenateSmallStrings)
