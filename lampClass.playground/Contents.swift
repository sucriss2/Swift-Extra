import UIKit

var greeting = "Hello, playground"

class Lamp {
    var type: String = ""
    var color: String = ""
    var resistance: Int = 0
    var potency: Int = 0
    var isOn: Bool = true
    
    func turnOn() {
        isOn = true
    }
    
    func turnOff() {
        isOn = false
    }
    
    func switchLight() {
        if isOn == true {
            isOn = false
        } else {
            isOn = true
        }
    }
    
    
}

let lampLed = Lamp()
lampLed.turnOff()
print(lampLed.isOn)
print("-------")
lampLed.turnOn()
print(lampLed.isOn)
lampLed.turnOn()
print(lampLed.isOn)
print("$$$$$$$$$$")

let lamp2: Lamp = Lamp()
lamp2.switchLight()
print(lamp2.isOn)
lamp2.switchLight()
print(lamp2.isOn)




