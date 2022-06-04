import UIKit

var greeting = "Hello, playground"

// CLASSES 25-02-2022

//classe sem função classe anemica

class Car {
    var model: String = ""
    var color: String = ""
    var year: Int = 0
    var power: String = ""
    var fuelType: String = ""
    var direction: String = ""
    var change: String = ""
    var speed: Int = 0
    var isOn: Bool = false
    var speedMAx: Int = 25
    var speedMin: Int = 0
    
    func turnOn() {
        if isOn == false {
            isOn = true
        }
    }
    
    func turnOff() {
        if isOn == true {
            isOn = false
        }
    }
    
    func speedUp() {
        speed += 10
        if speed > speedMAx {
            speed = speedMAx
        }
    }
    
    func speedDown() {
        speed -= 10
        if speed < speedMin {
            speed = speedMin
            print("passei if")
        }
    }
    
    func isStopped() -> Bool {
        if speed == speedMin {
            return true
        }
        
        return false
    }
}

let car = Car()
print(car.isOn)
car.turnOn()
print(car.isOn)
car.turnOff()
print(car.isOn)
print("-------")
print(car.speed)
car.speedUp()
print(car.speed)
car.speedUp()
print(car.speed)
car.speedUp()
print(car.speed)
print("---------")
print(car.speed)
car.speedDown()
print(car.speed)
car.speedDown()
print(car.speed)
car.speedDown()
print(car.speed)
car.speedDown()
print(car.speed)
print("--------")
print(car.isStopped())
car.speedUp()
print(car.isStopped())
/*
class Box {
    
    var material: String = ""
    var heigth: Int = 0
    var widht: Int = 0
    var length: Int = 0
    var cover: Bool = true
    
}

class House { //ver esquema de comodos
    
    var width: Int = 0
    var length: Int = 0
    var rooms: Int = 0
    var color: String = ""
    var pool: Bool = false
    var sunrise: String = ""
    var parkingSpace: Int = 0
    
}

class Rectangle {
    
    var lenght: Int = 0
    var widht: Int = 0
    
}

class Circle {
    
    var radius: Int = 0
    
}


class Clock {
    
    var time: Int = 0
    var brand: String = ""
    var model: String = ""
    var desing: String = ""
    var color: String = ""
    var material: String = ""
    var watchband: String = ""
    var marker: String = ""
    
}

class Lamp {
    
    var type: String = ""
    var color: String = ""
    var resistance: Int = 0
    var potency: Int = 0
    var on: Bool = true
    
}

class Person {
    
    var name: String = ""
    var gender: Character = "M"
    var age: Int = 0
    var height: Double = 0.0
    var weight: Double = 0.0
    var ethnicity: String = ""
    
}


class Book { //revisar este item como se fosse item de aplicativo
    
    var publisher: String = ""
    var author: String = ""
    var yearpublication: Int = 0
    var literaryGenre: String = ""
    var pages: Int = 0
    var title: String = ""
    var edition: Int = 0
    
}

class Battery {
    
    var potency: Int = 0
    var type: String = ""
    var brand: String = ""
    var size: Int = 0
    var capacity: Int = 0

    
}


class Monitor {
    
    var brand: String = ""
    var model: String = ""
    var resolution: Double = 0.0
    var color: String = ""
    var weight: Double = 0.0
    var brightness: Int = 0
    var contrast: Int = 0
    
    
}


class MessageWhattsap {
    
    var addressee: String = ""
    var message: String = ""
    
}


class Address {
 
    var type: String = ""
    var name: String = ""
    var district: String = ""
    var number: Int = 0
    var city: String = ""
    var state: String = ""
    var country: String = ""
    var zipCode: String = "00.000-000"
    
}
*/
