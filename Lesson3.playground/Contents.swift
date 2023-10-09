import UIKit

//MARK: -Collections

//Array - ORDERED list of values. Same data type. NOT unique. Indexed by starting at 0

/*
let arrayOfStrings1: [String] = [] //empty array. This is best.
var arrayOfInt = [Int]() //also empty array

let arrayOfStrings: [String] = ["a", "a", "c", "b"]
arrayOfStrings[0]

let arrayOfChar: [Character] = ["a", "a", "c", "b"]

arrayOfInt = [1, 2, 4, 6]
arrayOfInt += [7, 8, 9]
arrayOfInt.count
arrayOfInt.append(10)
arrayOfInt.insert(12, at: 2)
//arrayOfInt[13] this will crash, because we don't have so many elements in array

print("arrayOfInt is:", arrayOfInt)
dump(arrayOfInt)

type(of: arrayOfInt)

let someArrayOfInt = [99, 88]

var result = arrayOfInt + someArrayOfInt //joining of two arrays
print(result)
dump(result)

someArrayOfInt.isEmpty
arrayOfInt.removeFirst()
 */

var fruits = ["mango", "banana", "apple"]
fruits.reverse()
fruits.sorted()

if !fruits.isEmpty { //"!" means if it's NOT empty
    fruits.append("orange")
    fruits.insert("pear", at: 3)
    fruits.insert(contentsOf: ["kiwi", "cherry"], at: 0)
}

print(fruits)

fruits.removeAll { fruit in
    fruit == "kiwi"
}
 print(fruits)


let searchFruit = fruits.contains { fruit in
    fruit == "pear"
}
print(fruits)


var listOfArray: [ [Int] ] = [ [1, 3, 5], [0, 0, 0], [10, 11, 12] ] //array within array
print(listOfArray[2][0]) //2nd array, and 0 element in that array


//MARK: -Sets. Unordered, contains unique elements. But it's better to use arrays. Sets only in specific cases, where they're needed

var setOfChar1 = Set<Character>() //empty set
var setOfInt1: Set<Int> = [] //also empty set

var setOfInt: Set<Int> = []
setOfInt = [1, 2, 1, 1, 33, 4, 4]
print(setOfInt)
setOfInt.insert(11)
print(setOfInt)
setOfInt.remove(33)
print(setOfInt)
setOfInt.contains(11)
print(setOfInt)

let someArrayResult = setOfInt.sorted()
print("someArrayResult:::", someArrayResult)

//MARK: -Dictionaries. Has keys and values, has to be declared together and DO NOT USE the same name for both. Key should be unique, value is value. Dictionaries and arrays are powerful

var someStringDict1 = Dictionary<String, String>() //declaration
var moreStringDict1 = [Int: String]()
var stringDict1: [String: String] = [:] //use this declaration

var student: [String: String] = [
    "studentEmail" : "email.lv",
    "studentName" : "Erika",
    "studentSurname" : "Talberga",
    "studentDOB" : "21/11/1989",
    "website" : "www"
]

student["studentName"]
student["studentName"] = "changedName"
// dump(student)

student.count
student.updateValue("www.jaunaa.com", forKey: "website")
student.removeValue(forKey: "studentSurname")
// dump(student)

var fruitsList: [String: [String]] = [
    "A" : ["Apple", "Apricot"],
    "B" : ["Banana", "Blueberry"]
]

fruitsList["B"]

//MARK: -for loop

for i in 1...5 {
    print("\(i) * 10 is \(i * 10)")
}

for _ in 1...5 { //value _ is without a name
    print("Hello")
}

for index in 1...5 {
    print("\(index) Hello!")
}

let apples = [
    "red apples",
    "red apples",
    "green apples",
    "green apples",
    "red apples",
    "red apples",
    "red apples",
]

var basket = 0

for apple in apples {
    if apple == "red apples" {
        basket += 1
    }
}
print("I have \(basket) red apples in my basket")


let numberOfLegs = [
    "spiders" : 8,
    "dog" : 4,
    "ant" : 6
]

for (animalName, legsCount) in numberOfLegs {
    print("\(animalName) has \(legsCount) legs")
}

//MARK: -while loop

var counter = 0
while true {
    counter += 1
    print("My counter is \(counter)")
    if counter == 16 {
        print("break")
        break
    }
}
