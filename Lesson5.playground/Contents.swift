import UIKit

//MARK: -OOP Object Oriented Programming
///Object is like a simple template. It helps us to structure code with so called CLASSES, they have properties, functions and they can inherit attributes from each other. Classes are blueprint template. They become building blocks of our program.


let postTitle = "OOP"
let postText = "My new text"
let postAuthor = "AA"

let postTitle2 = "OOP"
let postText2 = "My second text"
let postAuthor2 = postAuthor


class Post {  //class ir Capital letter
    var title = ""
    var text = ""
    var author = ""
}
//i have created my own datatype! This is the template

let firstPost = Post()
firstPost.title = "POTS title"
firstPost.text = "My text"
firstPost.author = "me"

let secondPost = firstPost //lai nebutu abi vienadi, tad let secondPost = Post()
secondPost.title = "Second post"
secondPost.text = "Second text"
secondPost.author = "second author"

print("\(firstPost.author) has published new title: \(firstPost.title) with text \(firstPost.text)")
print("\(secondPost.author) has published new title: \(secondPost.title) with text \(secondPost.text)")

firstPost === secondPost


//MARK: -Class Methods

class Comment {
    var user = ""
    var numberOfLikes = 0
    
    func addLikes() {
        numberOfLikes += 1
    }
}

let firstComment = Comment()
firstComment.user = "AA"

firstComment.addLikes()
firstComment.addLikes()
firstComment.addLikes()


//classes need initializers
class Human {
    
    var name: String = ""
    var age: Int = 0
    
    init(myName: String, myAge: Int) {
        self.name = myName
        self.age = myAge
    }
    
    init() {}
    
    
}

let person = Human(myName: "Erika", myAge: 33)
person.age

let person2 = Human()
person.age = 22


//MARK: -INHERITANCE
///define peace of code that can be copied or shared and then improved.


class Parent {
    var name: String
    var age: Int
    
    init(myName: String, myAge: Int) {
        self.name = myName
        self.age = myAge
    }
    
    func walk() {
        print("I can walk")
    }
    
    func eat() {
        print("I can eat")
    }
    
    func sleep() {
        print("I can sleep")
    }
}

let dad = Parent(myName: "Sam", myAge: 33)
dad.name
dad.age
dad.eat()

class Child: Parent {
    func feeding() {
        if age <= 2 {
            print("Need to feed my child")
        } else {
            print("Child can eat independently")
        }
    }
    
    func education() {
        if age >= 4 {
            print("My child is in the kindergarden")
        } else if age < 4 {
            print("Too early for kindergarden")
        } else {
            print("Too late for kindergarden")
        }
    }
    
}

let littleBoy = Child(myName: "Toby", myAge: 1)
littleBoy.feeding()
littleBoy.education()


//MARK: -Polymorphism
///from greek - many forms. define a method with the same name as many times we want, but with different arguments

class Figure {
    func drawFigure() {}
}

class Circle: Figure {
    
    override func drawFigure() {
        print("Draw circle figure")
    }
}


class Rectangle: Figure {
    
    override func drawFigure() {
        print("Draw rectangle figure")
    }
}

class Triangle: Figure {
    
    override func drawFigure() {
        print("Draw triangle figure")
    }
}

let circle = Circle()
let rectangle = Rectangle()
let triange = Triangle()

func drawFigure(_ figure: Figure) {
    figure.drawFigure()
}

drawFigure(circle)
