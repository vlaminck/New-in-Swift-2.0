//: [Previous](@previous), [Home](home)
import Foundation
//: # Pattern Matching

let calculatedGrade: Grade = calculateGrade()

//: switch statements are incredibly powerful in Swift. But sometimes you don't need to evaluate all of the cases which forces you to do nothing of value in the `default` case.

switch(calculatedGrade) {
case .F: "Uh oh"
default: break
}

if calculatedGrade == .F {
    "Uh oh"
}

//: But with `if case` you can harness the power of switch statements in a more simplified manner
if case .F = calculatedGrade {
    "Uh oh"
}



let grades: [Grade] = [.A, .A, .B, .A]
for case .B in grades {
    studyHarder()
}

//: You can accomplish the same thing using `for in` with a `where` clause, but `for case` is a _lot_ more readable

for grade in grades where grade == .B {
    studyHarder()
}


//: `if case` also works with ranges, but the syntax seems a bit odd

if case 0...99 = 33 {
    "weird syntax, but pretty powerful"
}

if case 0...99 = 100 {
    "not getting hit"
}

let alpha = "aa"
let omega = "za"

if case alpha...omega = "db" {
   "yup!"
}

//if case 9...1 = 5 {
//    "uh"
//}

if (0...99).contains(33) {
    "contained!"
}


//: ### Take it to the next level with **Associated Values**

enum SomeEnum {
    case First(Emoji)
    case Second(Int)
}


let foo: SomeEnum = .First(Emoji.Dance)
let bar: SomeEnum = .Second(9)

func getSomething() -> SomeEnum {
//    return .Second(55)
    return .First(Emoji.HighFive)
}

//: `if case` with associated value
if case .First(let value) = getSomething() {
    "what??? \(value)"
}

//: this even works with `guard case`
func baz(someEnum: SomeEnum) -> Emoji {
    guard case .First(let value) = someEnum else {
        return Emoji.FlipTheBird
    }
    
    return value
}

baz(foo)

baz(bar)




//: [Next](@next)
