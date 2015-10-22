//: [Previous](@previous), [Home](home)
import UIKit
//: # Availability Checking

class VersionGetter {
    
    var version: Version?
    
//: `#available` can be used to check the SDK during logic flows
    class func currentVersion() -> Version {
        if #available(iOS 10.0, *) {
            return iOS10Func()
        } else {
            return iOS9Func()
        }
    }
    
//: `@available` can be used to to mark entire functions
    @available(iOS 9, *)
    class func nextVersion() -> Version {
        return iOS10Func()
    }
}


//: `@available` can also be used to to mark entire classes
@available(iOS 11, *)
class VersionSetter {
    class func setVersion(version: Version) {
        // future implementation ;)
    }
}



VersionGetter.currentVersion()

if #available(iOS 10, *) {
    VersionGetter.nextVersion()
}

if #available(iOS 11, *) {
    VersionSetter.setVersion(.iOS10)
} else {
    // Fallback on earlier versions
    "Not quite there yet \(Emoji.Shrug)"
}



//: [Next](@next)
