import UIKit

var greeting = "Hello, playground"


class Room {
    var width: Double = 0.0
    var length: Double = 0.0
    
    init(width: Double, length: Double) {
        self.width = width
        self.length = length
    }
    
    func metreage() -> Double {
        return width * length
    }
}

let room = Room(width: 5.5, length: 7.0)
room.metreage()
print(room.metreage())
print("-------x-x-x-x-x-x-----")




class House {
    var rooms: [Room] = []
    
    func addRoom(room: Room) {
        rooms.append(room)
    }
    
    func metreage() -> Double {
        var totalMeasure:Double = 0.0
        for room in rooms {
            totalMeasure = totalMeasure + room.metreage()
        
        }
        return totalMeasure
    }
}

let house = House()
house.addRoom(room: room)
house.addRoom(room: Room(width: 4.0, length: 6.0))
house.addRoom(room: Room(width: 5.0, length: 3.0))
house.metreage()
print(house.metreage())

