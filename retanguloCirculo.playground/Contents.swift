import UIKit

var greeting = "Hello, playground"


class Rectangle {
    var lenght: Int = 0
    var widht: Int = 0
    
    func calculateArea() -> Int {
         lenght * widht
    }
    
    func calculatePerimeter() -> Int {
        (lenght + lenght) + (widht + widht)
    }
}

let ret = Rectangle()
ret.widht = 30
ret.lenght = 40
ret.calculateArea()
print(ret.calculateArea())
ret.calculatePerimeter()
print(ret.calculatePerimeter())
print("--------------")



class Circle {
    var radius: Double = 0.0
    
    func calculateDiameter() -> Double {
        radius * 2
    }
    
    func calculateCircle() -> Double { //C=2.pi.raio
        2 * 3.14 * radius
    }
}

let circle = Circle()
circle.radius = 45
circle.calculateDiameter()
print(circle.calculateDiameter())
circle.calculateCircle()
print(circle.calculateCircle())
