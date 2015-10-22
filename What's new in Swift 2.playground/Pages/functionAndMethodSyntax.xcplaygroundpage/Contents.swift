//: [Previous](@previous), [Home](home)
import Foundation
//: # Function and Method Syntax

//: first argument is implied, labels are used for following arguments
func save(foo: String, bar: String) {}
save("", bar: "")

/*: 
\# is no longer a thing

    func load(#foo: String, bar: String) { }
*/

//: instead, name the first argument to require it
func load1(foo foo: String, bar: String) { }
load1(foo: "", bar: "")

//: underscore still disables argument labels
func load2(foo: String, _ bar: String) { }
load2("", "")

//: [Next](@next)
