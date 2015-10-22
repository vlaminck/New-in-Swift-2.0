//: [Previous](@previous), [Home](home)
import Foundation
//: ### Scoping

/*: 

Other languages have a `do while` where the `while` is optional. This forces you to look at the bottom of the scope to see if the scope will repeat

    do {
        let foo = "bar"

        //     Lot's of code here
        //
        //
        //
        //
        //
        //

        foo
    } while ()
*/


//: In Swift, `repeat` is used instead of `do` so you can see at the top of the scope that it will repeat
var count = 0
repeat {
    
    //     Lot's of code here
    //
    //
    //
    //
    //
    //
    
    print("count: \(count++)")
} while count < 5



//: [Next](@next)
