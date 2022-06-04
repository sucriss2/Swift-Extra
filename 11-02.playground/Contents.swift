import UIKit
import Darwin

var greeting = "Hello, playground"

/*/3
class Person {
    let name: String
    let phone: String
    let email: String
    init(name:String, phone: String, email: String) {
        self.name = name
        self.phone = phone
        self.email = email
    }
}


*//*4


struct PlayerFootball{
    enum Position: String {
        case atacante
        case meiocampo
        case defesa
    }
    
    var name: String
    var position: Position
    var age: Int
    var nationality: String
    
    init(name: String, position: Position, age: Int, nationality: String) {
        self.name = name
        self.position = position
        self.age = age
        self.nationality = nationality
    }
    
    func showInfoPlayer() {
        print("O jogador \(name), joga na posição de \(position), tem \(age) anos e é \(nationality).")
    }
    
    func timeOfRetire() {
        var retire = 0
        
        switch position {
        case .atacante:
            retire = 35 - age
        case .meiocampo:
            retire = 38 - age
        case .defesa:
            retire = 40 - age
        }
        print("Faltam \(retire) anos para aposentadoria")
    }
}

let playerFootball = PlayerFootball(name: <#T##String#>, position: <#T##PlayerFootball.Position#>, age: <#T##Int#>, nationality: <#T##String#>)
playerFootball.showInfoPlayer()
playerFootball.timeOfRetire()
 */

/*/5e6

struct Student{
    var name: String
    var numberRegistry: Int
    var grade1: Double
    var grade2: Double
    var workExtra: Double
    
    func calculeAverage() -> Double {
      let averange = (grade1 + grade2 + workExtra) / 3
        return averange
    }
    
    func calculeFinal() -> Double {
        let averange = calculeAverage()
        if averange < 7 {
            return 7 - averange
        }
        return 0.0
    }
}


let maria = Student(name: "Maria da Silva", numberRegistry: 12345, grade1: 5.0, grade2: 8.0, workExtra: 7.0)
maria.calculeAverage()
maria.calculeFinal()

let joao = Student(name: "Joao dos Santos", numberRegistry: 98765, grade1: 3.0, grade2: 7.0, workExtra: 7.5)
joao.calculeAverage()
joao.calculeFinal()

let jose = Student(name: "José Andrade", numberRegistry: 34567, grade1: 8.0, grade2: 7.5, workExtra: 7.5)
jose.calculeAverage()
jose.calculeFinal()
*/

/*/7

class Television{
    var volume: UInt
    var channel: UInt
    var isOn: Bool = true
    
    init(volume: UInt, channel: UInt) {
        self.volume = 0
        self.channel = 0
    }
}

class RemoteControl{
    let control: Television
    init(control: Television){
        self.control = control
    }
    
    func upVolume() {
        control.volume += 1
    }
    
    func donwVolume() {
        control.volume -= 1
    }
    
    func chargeChannel(channel: UInt) {
        control.channel = channel
    }
    
    func showVolume() {
        print(control.volume)
    }
    
    func showChannel() {
        print("A tv está no canal \(control.channel)")
    }
    
}

let tv = Television(volume: 0, channel: 0)
let remoteControl = RemoteControl(control: tv)
remoteControl.showChannel()
remoteControl.chargeChannel(channel: 43)
remoteControl.upVolume()
remoteControl.upVolume()
remoteControl.upVolume()
remoteControl.upVolume()
remoteControl.showChannel()
remoteControl.showVolume()
remoteControl.donwVolume()
remoteControl.donwVolume()
remoteControl.showVolume()

*/

//8
struct Person {
    let name: String
    let phone: String
    let email: String
    init(name:String, phone: String, email: String) {
        self.name = name
        self.phone = phone
        self.email = email
    }
}

class ContactBook {
    private var contacts: [Person]
    init(contacts: [Person]) {
        self.contacts = contacts
    }
    
    func addContact(name:String, phone: String, email: String) {
        if contacts.count < 5 {
            contacts.append(Person(name: name, phone: phone, email: email))
        } else {
            print("A agenda está cheia.")
        }
    }
    
    func delete(name:String) {
        var contact: Int = 0
        for person in contacts {
            if person.name == name {
                contacts.remove(at: contact)
                break
            }
            contact += 1
        }
    }
    
    func showInfoContact(name:String) {
        for person in contacts {
            if person.name == name {
              print("Nome:\(person.name), Telefone:\(person.phone) e E-mail:\(person.email)")
              break
            }
        }
    }
    
    func showCount() {
        print("Há \(contacts.count) contatos na agenda.")
    }
    
    func showContact() {
        for person in contacts {
        print("----------- CONTATO ---------- \n" +
              "\n" +
              " \("Nome:\(person.name), Telefone:\(person.phone) e E-mail:\(person.email)") \n" +
              "\n" +
//             " \(contacts[1]) \n" +
//             " \(contacts[2]) \n" +
//             " \(contacts[3]) \n" +
//             " \(contacts[4]) \n" +
             "----------- ------ ----------" +
        "\n" )
        }
    }
    
}


let agenda = ContactBook(contacts: [])
agenda.addContact(name: "maria", phone: "1234", email: "gmail")
agenda.addContact(name: "ana", phone: "1234", email: "gmail")
agenda.addContact(name: "luis", phone: "1234", email: "gmail")
agenda.addContact(name: "tati", phone: "1234", email: "gmail")
agenda.addContact(name: "livia", phone: "1234", email: "gmail")
agenda.showInfoContact(name: "livia")
agenda.showCount()
agenda.showContact()

