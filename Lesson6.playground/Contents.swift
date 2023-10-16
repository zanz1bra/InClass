import UIKit

//MARK: -Enumeration
///defines common type for a group or relative values. enables to work with the values in type safe way within your code

//var someDay = "Monday"
//
//func setupAlarm() {
//    if someDay == "monday" {
//        print("setup alarm at 7AM")
//    } else {
//        print("no alarm for today")
//    }
//}
//
//setupAlarm()
//doesn't print right, because of "Monday" vs "monday"

enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday, sunday
}

var weekday = Weekday.monday

func setupAlarm() {
    if weekday == .monday || weekday == .tuesday {
        print("setup alarm at 7AM")
    } else {
        print("no alarm for today")
    }
}

setupAlarm()

weekday = .wednesday
setupAlarm()

func setupSleepTimer() {
    switch weekday {
    case .monday:
        print("setup alarm at 7AM")
    case .tuesday:
        print("setup alarm at 7AM")
    case .wednesday:
        print("setup alarm at 7AM")
    case .thursday:
        print("setup alarm at 7AM")
    case .friday:
        print("setup alarm at 7AM")
    case .saturday:
        print("no alarm")
    case .sunday:
        print("no alarm")
    }}


enum CalculationType: String {
    case addition = "+"
    case subtraction = "-"
    case multiplication = "*"
    case division = "/"
}

var calc = CalculationType.addition
print(calc.rawValue)


enum Planet: Int {
    case earth = 1, venus, mercury, mars, jupiter, saturn, neptune, uranus
}
//made specific sequence, earth = 1, etc. by sequence

var somePlanet = Planet.mars
print("Mars is the \(somePlanet.rawValue)th planet from the sun")

var marsPlanet = Planet(rawValue: 4)
print("\(marsPlanet!) is the \(somePlanet.rawValue)th planet from the sun")

//associatd parameters

enum Weekend {
    case saturday(String)
    case sunday(String, Int, String)
}

var wknd = Weekend.sunday("Setup bed time at", 11, "PM")
print(wknd)


//MARK: -Struct vs Class
///struct is unique, it CAN'T inherit from another struct. struct = value types, class = object type. struct is custum data type, providing storage of data using properties with extendind functionality. and struct automatically generates intitializers. class stores value in memory address. struct will not take the same memory adress, but will create a new one, this is why class is suitable for situations where memor address needs to be accessed and shared inside the app. class ir observable object, it listens if there are changes and notifies in some other part of app. struct listens only to itself.

struct ChessBoard {
    var playerName: String?
    var x: Int?
    var y: Int?
    
    func getPositionOnBoard() {
        print("The position of \(String(describing: playerName)): x: \(x ?? 0), y: \(y ?? 0)")
    }
}

var playerOne = ChessBoard(playerName: "P1", x: 23, y: 6)
var playerTwo = ChessBoard(playerName: "P2", x: 1, y: 7)

playerOne.getPositionOnBoard()
playerTwo.getPositionOnBoard()



class MacBook {
    var name: String?
    var year: Int?
    var color: String?
    
    init(name: String, year: Int, color: String) {
        self.name = name
        self.year = year
        self.color = color
    }
    
    func getSpecs() {
        print("\(name ?? ""), \(year ?? 0), \(color ?? "")")
    }
}

var macBookPro = MacBook(name: "MacBookPro", year: 2021, color: "Grey")
macBookPro.getSpecs()

let macBookAir = macBookPro
macBookAir.name = "MacBookAir"

macBookPro.getSpecs()
macBookAir.getSpecs()


struct iPhone {
    var name: String?
    var year: Int?
    var color: String?
    var capacity: Int?
    
    func getSpecs() {
        print("\(name ?? ""), \(year ?? 0), \(color ?? ""), \(capacity ?? 0)")
    }
}

let iPhoneSE = iPhone(name: "iPhone SE", year: 2020, color: "Black", capacity: 64)

var iPhoneMini = iPhoneSE //uses only copy of the object

iPhoneMini.name = "iPhone mini"

iPhoneSE.getSpecs()
iPhoneMini.getSpecs()
