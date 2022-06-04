import UIKit

var greeting = "Hello, playground"


class Semaphore {
    var color: String = "Vermelho"
    
    func changeSignal() {
        switch color {
        case "Vermelho":
            color = "Amarelo"
        case "Amarelo":
            color = "Verde"
        default:
            color = "Vermelho"
        }
    }
}

let semaphore = Semaphore()
print(semaphore.color)
semaphore.changeSignal()
print(semaphore.color)
semaphore.changeSignal()
print(semaphore.color)
semaphore.changeSignal()
print(semaphore.color)

class Semaphore2 {
    var state: Int = 0
    let maxState = 3
    
    func changeState() {
        state = state + 1
        state = state % maxState
    }
    
//    func getStateLight() -> String {
//        switch state {
//        case 0: return "Vermelho"
//        case 1: return "Amarelo"
//        default: return "Verde"
//        }
//    }
    
    func getStateLight() -> String {
        let colors = ["Vermelho", "Amarelo", "Verde"]
        return colors[state]
    }
}

let sem2 = Semaphore2()
print(sem2.getStateLight())
sem2.changeState()
print(sem2.getStateLight())
sem2.changeState()
print(sem2.getStateLight())
sem2.changeState()
print(sem2.getStateLight())
sem2.changeState()
print(sem2.getStateLight())
sem2.changeState()
