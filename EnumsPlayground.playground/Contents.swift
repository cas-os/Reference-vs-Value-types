import UIKit

var greeting = "Bonsoir Elliot"


enum CompassPoint {
    case north
    case south
    case west
    case east
}


var directionToHead = CompassPoint.north

print(directionToHead)

directionToHead = .south

switch directionToHead {
case .north:
    print("Lots of planets have a north")
case .south:
    print("Watch out for penguins")
case .west:
    print("Where the skies are blue")
case .east:
    print("Where the sun rises")
}


enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

let somePlanet = Planet.earth

switch somePlanet {
case .earth:
    print("Mostly harmless")
default:
    print("Not a safe planet for humans")
}


enum Beverage: CaseIterable {
    case coffee, tea, juice, soda
}

let numberOfChoices = Beverage.allCases.count

for beverage in Beverage.allCases {
    print(beverage)
}


//======================================

enum SoftwarePlatform {
    case web
    case iOS
    case android
}

let platform = SoftwarePlatform.iOS

switch platform {
case .iOS:
    print("You are iOS developer")
case .android:
    print("You are android developer")
case .web:
    print("You are web developer")
}

enum Season:CaseIterable {
    case winter, spring, summer, autumn
}


for season in Season.allCases {
    print(season)
}

print("There are \(Season.allCases.count) seasons")




enum Language {
    case swift(String, Double)
    case java(String)
    case objectiveC(String)
}


let language = Language.swift("iOS", 5.6)


switch language {
case .swift(let platform, let version):
    print("Looks like you are a \(platform) developer running Swift \(version)")
default:
    print("Other language.")
    
}


enum UserState: String {
    case newUser = "Welcome."
    case existingUser = "Continue from where you left off."
}

let userState = UserState.existingUser
print(userState)
print(userState.rawValue)


enum DaysOfTheWeek: Int {
    case monday = 1, tuesday, wednesday, thursday, friday, saturday, sunday
}

let day = DaysOfTheWeek.tuesday
print(day.rawValue)

let newDay = DaysOfTheWeek(rawValue: 5)

if let existingDay = newDay {
    print("Existing day is \(existingDay) and raw value is \(existingDay.rawValue).")
} else {
    print("Day does not exist.")
}
//===================================

enum CovidVaccines: String {
    case pfizer = "Pfizer"
    case moderna = "Moderna"
    case astraZeneca = "AstraZeneca"
    case janssens = "Janssesns"
    case novavax = "Novavax"
    
    static var updates: String {
        return "Update from CD ..."
    }
    
    var name: String {
        return self.rawValue
    }
    
    var numberOfShots: (shot: Int, days: Int) {
        switch self {
        case .pfizer:
            return (2,21)
        case .moderna:
            return (2,28)
        default:
            return (-1,-1)
        }
    }
    
    func info(){
        switch self {
        case .pfizer, .moderna:
            print("\(name) Authorized and recommended by the CDC.")
        default:
            print("\(name) Is in phase 3 Clinical Trials.")
        }
    }
}



let vaccine = CovidVaccines.pfizer
print(vaccine.rawValue)

vaccine.info()
vaccine.name
print(vaccine.name)
print(vaccine.numberOfShots)

print(CovidVaccines.updates)
