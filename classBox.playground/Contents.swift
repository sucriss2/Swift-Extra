import UIKit
import CoreGraphics

var greeting = "Hello, playground"


class Box {
    var material: String = ""
    var height: Int = 0
    var width: Int = 0
    var length: Int = 0
    var cover: Bool = true
    
    func getVolume() -> Int {
        return height * width * length
    }
    
}

let box = Box()
box.width = 20
box.length = 30
box.height = 25
box.getVolume()
print(box.getVolume())
print("-----------")

let box2 = Box()
box2.width = 10
box2.length = 25
box2.height = 30
box2.getVolume()
print(box2.getVolume())
