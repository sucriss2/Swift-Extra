import UIKit
import CoreFoundation
import Foundation

var greeting = "Hello, playground"

//EXERCICIOS NOTION

/*/2
class Painting {
    var title: String
    var artist: String
    var paintType: String
    
    init(title: String, artist: String, paintType: String) {
        self.title = title
        self.artist = artist
        self.paintType = paintType
    }
}

class BoardGame {
    var name: String
    var minimumPlayers = 1
    var maximumPlayers = 4
    
    init(name: String) {
        self.name = name
    }
}

class Sandwich {
    var name: String = "BLT"
    var fillings: [String] = ["Bacon", "Lettuce", "Tomato"]
}

class VideoGame {
    var hero: String
    var enemy: String
    
    init(heroName: String, enemyName: String) {
        self.hero = heroName
        self.enemy = enemyName
    }
}

let monkeyIsland = VideoGame(heroName: "Guybrush Threepwood", enemyName: "LeChuck")

class Image {
    var filename: String
    var isAnimated: Bool
    
    init(filename: String, isAnimated: Bool) {
        self.filename = filename
        self.isAnimated = isAnimated
    }
}

class Poll {
    var question: String = "Jet black or rose gold?"
    var option1: String = "Jet black"
    var option2: String = "Rose gold"
    var votes: [Int] = [0, 0, 0, 0, 1, 0, 1]
}

class Attendee {
    var badgeNumber = 0
    var name = "Anonymous"
    var company = "Unknown"
    
    init(badge: Int) {
        self.badgeNumber = badge
    }
}

//3

class Person {
    var name: String
    var phone: String
    var eMail: String
    
    init(name:String, phone: String, eMail: String) {
        self.name = name
        self.phone = phone
        self.eMail = eMail
    }
}
*/

//4
//enum Position: String {
//    case atacante
//    case meioCampo
//    case defesa
//}
/*
enum Position: String {
    case atacante
    case meioCampo
    case defesa
    
    var retirementAge: Int {
        switch self {
        case .atacante:
            return 35
        case .meioCampo:
            return 38
        case .defesa:
            return 40
        }
    }
}

class PlayerFootball {
    
    let name: String = ""
    let age: Int
    let position: Position
    let nationality: String = "Brazilian"
    let height: Double
    let weight: Double
    
    var retire: Int {
        return position.retirementAge - age
    }
    
    init(age: Int, position: Position, height: Double, weight: Double) {
        self.age = age
        self.position = position
        self.height = height
        self.weight = weight
    }
    
    func showInfo() {
        print("O jogador tem \(age), é \(position.rawValue),tem \(height) de altura e pesa \(weight).")
    }
}

let neymar = PlayerFootball(age: 30, position:.atacante, height: 1.72, weight: 70.0)
neymar.showInfo()
neymar.retire
print(neymar.retire)

let robson = PlayerFootball(age: 27, position: Position.defesa, height: 1.55, weight: 1.56)
robson.showInfo()
robson.retire
print(robson.retire)
*/
//struct Rectangle {
//    let width: Double
//    let height: Double
//
//    func scale(by percent: Int) -> Rectangle {
//        let newWidth = width * ((Double(percent) / 100.0) + 1.0)
//        let newHeight = height * ((Double(percent) / 100.0) + 1.0)
//
//        return Rectangle(width: newWidth, height: newHeight)
//    }
//}
//
//let rect = Rectangle(width: 100, height: 100)
//let newRect = rect.scale(by: 20)
//
//print(rect)
//print(newRect)
//
//
//struct Currency {
//    let value: Float
//
//    func convertedValue(base value: Float) -> Float {
//        return self.value * value
//    }
//}
//
//let dolar = Currency(value: 120.0)
//print(dolar.convertedValue(base: 5.30))



/*/5
class Student{
    let fullname: String
    let registration: String
    let grade1: Float
    let grade2: Float
    let overwork: Float
    
    init(fullname: String, registration: String, grade1: Float, grade2: Float, overwork: Float) {
        self.fullname = fullname
        self.registration = registration
        self.grade1 = grade1
        self.grade2 = grade2
        self.overwork = overwork
    }
//6
    func calculateAverage() -> Float {
        return (grade1 + grade2 + overwork)/3
    }
    
    func calculeTest() -> Float {
        let noteMin: Float = 7.0
        if calculateAverage() <= noteMin {
         return noteMin - calculateAverage()
        } else {
            return 0.0
        }
    }
}
// RESPOSTA DEDÉ
//    func calculateAverage() -> Double {
//            let average = (gradeTest1 + gradeTest2 + gradeCoursework) / 3
//            return average
//        }
//
//        func calculateFinalGradeNeeded() -> Double {
//            let average = calculateAverage()
//            if average < 7.0 {
//                return 7.0 - average
//            } else {
//                return 0.0
//            }
//        }
 /*
}
let student1 = Student(fullname: "Maria da Silva", registration: "12345", grade1: 5.0, grade2: 8.0, overwork: 7.0)
student1.calculateAverage()
student1.calculeTest()
print(student1.calculateAverage())
print(student1.calculeTest())
print("---------xxxxxxx---------")

let student2 = Student(fullname: "João dos Santos", registration: "98765", grade1: 3.0, grade2: 7.0, overwork: 7.5)
student2.calculateAverage()
student2.calculeTest()
print(student2.calculateAverage())
print(student2.calculeTest())
print("---------xxxxxxx---------")

let student3 = Student(fullname: "José Andrade", registration: "34567", grade1: 8.0, grade2: 7.5, overwork: 7.5)
student3.calculateAverage()
student3.calculeTest()
print(student3.calculateAverage())
print(student3.calculeTest())
*/

/*/7

class Television {
    var channel: Int
    var sound: Int
    
    init(channel: Int = 0, sound: Int = 0){
        self.channel = channel
        self.sound = sound
    }
    
    func upVolume() {
        sound += 1
    }
    
    func downVolume() {
        sound -= 1
    }
    
    func changeChannel(channel: Int) {
        self.channel = channel
    }
    
    func showChannel() {
        print("A tv está no canal \(channel).")
    }
    
    func showVolume() {
        print("A tv está no volume \(sound).")
    }
    
}


class Control {
    let tv: Television
    init(tv:Television){
        self.tv = tv
    }

    func upVolume() {
        tv.upVolume()
        tv.showVolume()
    }
    
    func donwVolume() {
        tv.downVolume()
        tv.showVolume()
    }
    
    func changeChannel(channel: Int) {
        tv.channel
        tv.showChannel()
    }
    
}

let globo = Control(tv: Television(channel: 3, sound: 5))
globo.changeChannel(channel: 51)
globo.upVolume()
globo.donwVolume()
globo.changeChannel(channel: 11)
globo.changeChannel(channel: 51)
*/


*/

//8
struct Person {
    var name: String
    var phone: String
    var eMail: String
    
    init(name:String, phone: String, eMail: String) {
        self.name = name
        self.phone = phone
        self.eMail = eMail
    }
}

class ContactBook {
   private var contacts: [Person]
    init(contacts:[Person]) {
    self.contacts = contacts
    }
    
    
    func add(name: String, phone: String, eMail: String) {
        if contacts.count < 5 {
            let person: Person = Person(name: name, phone: phone, eMail: eMail)
            contacts.append(person)
        } else {
            print("Agenda cheia")
        }
    }
     
    func delete(name: String) {
        var count = 0
        
        for person in contacts {
            //print(person.name, count)
            if name == person.name {
                //print(name)
                contacts.remove(at: count)
                break
            }
            count += 1
        }
    }
    
    func showContact(name: String) {
        for value in contacts {
            if name == value.name {
                let message = "" +
                    "=========== CONTATO =========== \n" +
                    " 👩🏼‍💼 \(value.name)\n" +
                    " 📱 \(value.phone)\n" +
                    " 📧 \(value.eMail)\n" +
                    "=============================== \n"
                print(message)
                break
            }
        }
        
//        for value in contacts where name == value.name {
//            let message = "" +
//                "=========== CONTATO =========== \n" +
//                " 👩🏼‍💼 \(value.name)\n" +
//                " 📱 \(value.phone)\n" +
//                " 📧 \(value.eMail)\n" +
//                "=============================== \n"
//
//            print(message)
//            break
//        }
    }
    
    func showCount() {
       print("Há \(contacts.count) contatos na agenda.")
    }

    
}

let contactBook = ContactBook(contacts: [])
contactBook.add(name: "suh", phone: "1234", eMail: "gmail")
contactBook.add(name: "paulo", phone: "1234", eMail: "gmail")
contactBook.add(name: "ana", phone: "1234", eMail: "gmail")
contactBook.add(name: "ju", phone: "1234", eMail: "gmail")
//contactBook.add(name: "carlos", phone: "1234", eMail: "gmail")
//print("-------------xxxxxxx--------")
//contactBook.delete(name: "suh")
//print(contactBook.contacts)
contactBook.showContact(name: "ju")
contactBook.showCount()

