//: [Previous](@previous), [Home](home)
import Foundation
//: # Early Exits

func evaluateEmoji(emoji: Emoji?) {
    if let emoji = emoji {
        "Do something with \(emoji)"
        /*
        ...
        ...
        ...
        ...
        */        
/*:
If you have a large block of code here but nothing afer the `if let`

... Well, that sucks. And it probably didn't need to be indented
        
If only there was a way could return early 😛
*/
    }
}

func evaluateAnotherEmoji(emoji: Emoji?) {
    guard let emoji = emoji else { return }
    "Do something with \(emoji)"
    /*
    ...
    ...
    ...
    ...
    */
/*:
`guard let` allows early returns and avoids excessive indentation
*/
}

struct Officer {
    let id, name: String
    let rank: Rank
}

//: Swift 1.2 removed the pyramid of doom by introducing compound conditions, but you still had to move your scope in a level
func processJsonOld(json: NSDictionary) -> Any? {
    if let id = json["id"] as? String,
        name = json["name"] as? String,
        rank = Rank(json["rank"] as? String) {
            let officer = Officer(id: id, name: name, rank: rank)
            /* 
             * do a lot more processing here
             */
            return officer
    }
    return nil
}

func processJsonNew(json: NSDictionary) -> Any? {
    guard let id = json["id"] as? String,
        name = json["name"] as? String,
        rank = Rank(json["id"] as? String) else {
            return nil
    }

    let officer = Officer(id: id, name: name, rank: rank)
    /*
    * do a lot more processing here
    */
    return officer
}

//: [Next](@next)
