//: [Previous](@previous), [Home](home)
import Foundation
//: # Error Handling

//: The old way of handling errors was to pass a reference to an NSError object into a method. These methods would then return a Boolean that indicated success or failure. 
func loadData(error: NSErrorPointer) -> Bool { /* do something */return false }

//: The new way of handling errors is much more in line with other popular languages. Functions that can throw exceptions are marked with `throws`.
func loadData() throws { /* new way */ }

//: To handle functions marked with `throws` you must wrap them in a `do {} catch {}` and indicate the function that can throw the exception with `try`

var bros, bffs: Emoji?

do {
    bros = try giveHugs()
    bffs = try giveLongHug()
    "giveLongHugs throws an exception so this will not show up to the right"
} catch FriendlyError.HugDenied {
    laughItOff() // be a good sport ;)
} catch FriendlyError.WentForTheHandshake(let err) {
    "error: \(err)"
} catch {
    Emoji.Shrug
}

if let bros = bros {
    Emoji.HighFive
}

if let bffs = bffs {
    Emoji.Dance
} else {
    Emoji.Shrug
}

//: What about `finally` blocks?

do {
    willTryHugging()
    try giveLongHug()
//: `giveLongHug()` throws a `FriendlyError` which prevents `didTryHugging()` from executing
    didTryHugging()
} catch {
    "no long hugs \(Emoji.MistyEyes)"
}


//: `defer` will execute before the `do` scope is exits, and before the `catch` scope is executed. You can see this by following the count increments in the following code.

var count = 0
do {
    willTryHugging()
    ++count
    defer {
        //: inside the `defer`
        ++count
        didTryHugging()
    }
    count
    try giveLongHug()
    ++count // this one does not get hit
} catch {
    ++count
}

//: [Next](@next)
