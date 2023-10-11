import UIKit

//MARK: -Functions()
//functions of block of code, limited by curly braces and with UNIQUE name and purpose. to do something. helps to NOT duplicate the code. we create the function and can call it ANYWHERE. function name is a verb - what the function will do

multiplyTwoNumbers()

func multiplyTwoNumbers() {
    print("result:", 3 * 3)
}

multiplyTwoNumbers()

func multiplyTwoNumber() -> Int { //-> means return Integer
    let a = 5
    let b = 2
    return a * b
}

multiplyTwoNumber()



func multiplyTwoNumber(numberOne a: Int, numberTwo b: Int) -> Int {
    return a * b
}
//create function nmultiplyTwoNumber, argument numberOne is a: Int, argument two numberTwo is b: Int
multiplyTwoNumber(numberOne: 5, numberTwo: 6)

func multiplyTwoNumber(a: Int, b: Int) -> Int {
    return a * b
}
multiplyTwoNumber(a: 14, b: 78)


func multiplyTwoNumber(_ numberOne: Int, _ numberTwo: Int) -> Int {
    return numberOne * numberTwo
}
multiplyTwoNumber(67, 89)


func multiplyTwoNumber(_ numberOne: Int, multiply  numberTwo: Int) -> Int {
    return numberOne * numberTwo
}
multiplyTwoNumber(8, multiply: 64)







func averageCalculation(_ numbers: Double...) -> Double {
    var total = 0.0
    for myNumber in numbers {
        total += myNumber
    }
    
    return total / Double(numbers.count) //dividing to get average
}

averageCalculation(19, 17.6, 90, 53.2)



let someValue = 5
let someArrayOfNumbers = [6, 5, 11, 4, 15, 8, 7, 9, 2, 1, 0]

filterLessThan(value: someValue, numbers: someArrayOfNumbers)

func filterLessThan(value: Int, numbers: [Int]) -> [Int] {
    var filteredNumbers: [Int] = [] //declared as empty array of integers
    
    for myNumber in numbers {
        if myNumber < value {
            filteredNumbers.append(myNumber)
        }
    }
    return filteredNumbers
}




func calculateDateOfBirth(fromMyDay day: Int, fromMyMonth month: Int, fromMyYear year: Int) {
    let currentDate = Date()
    
    var dateComponents = DateComponents()
    dateComponents.day = day
    dateComponents.month = month
    dateComponents.year = year
    
    let userCalendar = Calendar.current
    
    if  let calculateDate = userCalendar.date(from: dateComponents) {
        let dayPassed = userCalendar.dateComponents([.day], from: calculateDate, to: currentDate).day
        let monthPassed = userCalendar.dateComponents([.month], from: calculateDate, to: currentDate).month
        let yearPassed = userCalendar.dateComponents([.year], from: calculateDate, to: currentDate).year
        
        print("\(yearPassed ?? 0) years, \(monthPassed ?? 0) months and \(dayPassed ?? 0) days since my birth")
        
    }
}
 
calculateDateOfBirth(fromMyDay: 21, fromMyMonth: 11, fromMyYear: 1989)
