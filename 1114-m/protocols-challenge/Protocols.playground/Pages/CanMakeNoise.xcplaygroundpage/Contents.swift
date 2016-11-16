//: Playground - noun: a place where people can play

import UIKit

protocol CanMakeNoise {
    func makeNoise()
}

class Human: CanMakeNoise {
    func makeNoise() {
        print("TROLOLOLOLOLOLOL")
    }
}

class Pig: CanMakeNoise {
    func makeNoise() {
        print("Oink")
    }
}

class Cow: CanMakeNoise {
    func makeNoise() {
        print("Mooooooooo")
    }
}

let human = Human()
let pig = Pig()
let cow = Cow()

let arrayOfNoiseMaker: [CanMakeNoise] = [human, pig, cow]

/*:
 **Tasks**:
 1. Uncomment above line and make the code compile. This can be achieved by implementing the `CanMakeNoise` protocol in all the classes. Think about a noise each class could make and print it to the console using `print`.
 2. Iterate over `arrayOfNoiseMaker` and let each object make their noise
 */


//1. Done above

//2.

for animal in arrayOfNoiseMaker {
    animal.makeNoise()
}

