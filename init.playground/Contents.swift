import UIKit

var greeting = "Hello, playground"



class Rectangle {
    var height: Int = 0
    var width: Int = 0
    
    init(height: Int, width: Int) {
        self.height = height
        self.width = width
    }
    
    init(size: Int) {
        height = size
        width = size
    }
    
    init(halfOf rectangle: Rectangle) {
        height = rectangle.height / 2
        width = rectangle.width / 2
    }
    
}

let rect = Rectangle(height: 43, width: 23)
let square = Rectangle(size: 20)
let rect2 = Rectangle(halfOf: rect)
dump(rect2)

//&&&&&&&&&&&&&&&&&&&&&&&&&------------------&&&&&&&&&&&&&&&&&&&&&&&&&&

class Account {
    var balance: Int = 0
    
    init(balance: Int) {
        self.balance = balance
    }
    
    func withdraw(value: Int) {
        if value <= 0 {
            return
        }
        
        if value <= balance {
            balance -= value
        }
        

    }
    
    
}
let account = Account(balance: 500)
//account.withdraw(value: 100)
//print(account.balance)
//account.withdraw(value: 450)
//print(account.balance)
//account.withdraw(value: 400)
//print(account.balance)
account.withdraw(value: -200)
print(account.balance)
account.withdraw(value: -300)
print(account.balance)
account.balance = 10_000
print(account.balance)
