import UIKit

var greeting = "Hello, playground"

//61
/*func triple() {
    var valueIni = 0
    var valueLast = 30

while valueIni <= valueLast {
    print(valueIni)
    valueIni += 3
  }
    
print("Acabou!")
    
}

triple()
*/


/*/64
func fivefold() {
    for number in stride(from: 0, to: 40, by: 5) {
        print(number)
    }
    print("Acabou!")
    
}
fivefold()*/

/*func fivefold2() {
    var valueInit = 0
    var valueLast = 40
    
    for number in valueInit...valueLast {
        if number % 5  == 0 {
            print(number)
        }
    }
    
    print("Acabou!")
}
fivefold2()
*/

//65
func tell() {
    for number in stride(from: 0, to: 100, by: 10).reversed(){
        print(number)
    }
    print("Acabou!")
}
tell()
