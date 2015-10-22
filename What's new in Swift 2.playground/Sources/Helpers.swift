import Foundation

// MARK: Everywhere
public enum Emoji: String, CustomStringConvertible {
    case Hug = "༼ つ ◕_◕ ༽つ GIVE HUGS"
    case Laugh = "☜(ﾟヮﾟ☜)"
    case Dance = "ヽ(⌐■_■)ノ♪♬"
    case HighFive = "( ‘-’)人(ﾟ_ﾟ )"
    case MistyEyes = "ಡ_ಡ"
    case Shrug = "¯\\_(ツ)_/¯"
    case FlipTheBird = "╭∩╮（︶︿︶）╭∩╮"
    
    public var description: String {
        get { return self.rawValue }
    }
}

// MARK: Error Handling
public func giveHugs() throws -> Emoji {
    return Emoji.Hug
}
public func giveLongHug() throws -> Emoji {
//    throw WorldCollapse.Crap
    throw FriendlyError.HugDenied()
}
public func laughItOff() -> String { return "\(Emoji.Laugh) Hey, no prob!" }
public enum FriendlyError: ErrorType {
    case HugDenied()
    case WentForTheHandshake(emoji: Emoji)
}
public enum WorldCollapse: ErrorType {
    case Crap
}
public func willTryHugging() -> String {
    return "bring it in bro"
}
public func didTryHugging() -> String {
    return "Hug attempt ended"
}

// MARK: Availability Checking
public enum Version {
    case iOS9, iOS10, iOS11
}
public func iOS9Func() -> Version { return .iOS9 }
public func iOS10Func() -> Version { return .iOS10 }
public func iOS11Func() -> Version { return .iOS11 }

// MARK: Fluent Interfaces
public func isOdd(number: Int) -> Bool { return number % 2 == 1 }

// MARK: Early Exits
public enum Rank {
    case General, Captain
    public init?(_ value: String?) {
        if value == "General" {
            self = .General
        }
        if value == "Captain" {
            self = .Captain
        }
        return nil
    }
}
public struct MilitaryOfficer {
    let id, name: String
    let rank: Rank
}

// MARK: Pattern Matching
public enum Grade {
    case A, B, C, D, F
}
public func calculateGrade() -> Grade {
    // do some calculations here
    return .B
}
public func studyHarder() -> String { return "Shhh. I'm studying" }



