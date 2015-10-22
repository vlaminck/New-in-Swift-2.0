//: [Previous](@previous), [Home](home)
import Foundation
//: # Fluent Interfaces

let numbers = [5, 3, 7, 2, 9, 10, 22]

/*: 
The old way looks a bit too much like Lisp for my taste. Not that that's a bad thing, but it can be a little hard to read.

`let x = filter(map(numbers) { $0 * 3 }, isOdd )`
*/

//: The new way allows for a chaining syntax which is *much* easier to read
let x = numbers.map { $0 * 3 }.filter(isOdd)
x

//: [Next](@next)
