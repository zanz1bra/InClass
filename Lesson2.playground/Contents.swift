import UIKit

//MARK: -Lesson2
//comment
///description

//if else conditional statement
///allows to execute one or more instructions, if the condition is true. to check a condition we need to make our condition true
///the best practice is just one if-else, not a lot of if-else if-else-if-else.

var myNumber = 10

if myNumber > 4 {
    print("The condition is true")
}


var myNumber2 = ""

if myNumber2.isEmpty {
    print("The empty condition is true")
}


if myNumber < 4 && myNumber == 10 {
    print("The 2 condition is true")
} else if myNumber < 8 {
    print("The 2 condition is true")
} else {
    print("Nothing here is true")
}

//Switch case conditional statement
///compares a value with the list of values corresponding

let letter = "C"

switch letter {
case "a", "A":
    print("Our letter is: A")
case "b", "B":
    print("Our letter is: B")
case "c", "C":
    print("Our letter is: C")
default:
    print("No idea")
}


let planetCount = 8
var countExpression = ""

switch planetCount {
case 0:
    countExpression = "none"
case 1...4:
    countExpression = "few"
case 5, 6, 7, 8, 9, 10:
    countExpression = "several"
case 12...:
    countExpression = "dozen and more"
default:
    countExpression = "many"
}

print("There are \(countExpression) known planets!")




let officeLevel: Character = "A" //An access to office ground floor

switch officeLevel {
case "A":
    print("You have A area access")
    fallthrough
case "B":
    print("You have B area access")
    fallthrough
case "C":
    print("You have C area access")
    fallthrough
default:
    break
}


let color = "Red"
let number: Int = 3

switch color {
case "Red" where number == 3:
    print("You have a red one")
case "Yellow" where number == 3:
    print("You have a yellow one")
default:
    break
}


//Optional?

var someString = "" //this is still a value. string is empty
var stringType: String //here we don't have a value

stringType = "game"

///best practice - everything is optional. it prevents us to receive an error. optionals can contain a value AND CAN CONTAIN NIL. nil ir not a value, there is nothing!

var stringNumber = "124"
var convertToInt = Int(stringNumber)

var stringNumber2 = "124a"
var convertToInt2 = Int(stringNumber2) //this will be nil

var optionalString: String? //can be string and can be nil
optionalString = "100t"
var convertMyOptional = Int(optionalString!) //forced conversion

//print(convertMyOptional!)  this will crash

if convertMyOptional == nil {
    print("convertMyOptional does not contain Int value")
}

/*
 if number != nil {
    print("number does contain Int value")
}
*/


