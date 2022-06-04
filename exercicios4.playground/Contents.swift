import UIKit
import Darwin

var greeting = "Hello, playground"

/*/38

func count() {
    var number = 12
    let lastNumber = 11
    while number <= lastNumber {
        print("\(number)")
        number = number + 1
    }
    print("Acabou")
}
count()

print()

func count2() {
    var number = 12000
    let lastNumber = 11
    repeat {
        print("\(number)")
        number = number + 1
    } while number <= lastNumber
    
    print("Acabou")
}
count2()
 
 func count() {
     for number in 6...11 {
         print(number)
     }
     print("Acabou!")
 }
 count()




//39
func countDown() {
    var number = 10
    let lastNumber = 3
    while number >= lastNumber {
        print("\(number)")
        number = number - 1
    }
    print("Acabou!")
}
countDown()
 
 //(for/in
 func countDown() {
     for number in (3...10).reversed(){
         print(number)
     }
     print("Acabou!")
 }
 countDown()
*/


//40
func countThree() {
    var number = 0
    let lastNumber = 18
    while number <= lastNumber {
        print("\(number)")
        number = number + 3
    }
    print("Acabou!")
}
countThree()


//41
func countfive() {
    var number = 100
    let lastNumber = 0
    while number >= lastNumber {
        print("\(number)")
        number = number - 5
    }
    print("Acabou!")
}
countfive()
//   FOR / IN
func countThree() {
    for number in 0...18 {
        if number % 3 == 0 {
            print(number)
        }
    }
    print("Acabou!")
}
countThree()

func countThree3() {
    for number in stride(from: 0, to: 19, by: 3) {
            print(number)
    }
    print("Acabou!")
}
countThree3()



//42
func count(number: Int) {
    var number: Int = number
    var lastNumber = 1
    while number >= lastNumber {
        print("\(lastNumber)")
        lastNumber = lastNumber + 1
    }
    print("Acabou")
}
count(number: 35)
count(number: 25)
count(number: 3)
 //FOR / IN
func count(value: Int) {
    var value = value
    for number in 0...value {
        print(number)
    }
    print("Acabou!")
}
count(value: 6)
print("kkkk")
count(value: 20)

//43
func count() {
    var number = 30
    var lastNumber = 1
    while number >= lastNumber {
        if number % 4 == 0 {
            print("[\(number)]")
        } else {
            print("\(number)")}
        number = number - 1
    }
}
count()

 // FOR / IN
func count2() {
    var initValue: Int = 1
    var lastValue: Int = 30
    for number in (initValue...lastValue).reversed() {
        if number % 4 == 0 {
            print("[\(number)]")
        } else {
            print(number)
        }
    }
}
count2()
 

 //44

func count() {
    var initialValue = 3
    var lastValue = 10
    var step = 2
    while initialValue <= lastValue {
        print(initialValue)
        initialValue = initialValue + step
    }
    print("Acabou!")
}
count()


func count2() {
    var initialValue = 3
    var lastValue = 10
    var step = 2
    for number in stride(from: 3, to: 10, by: 2){
        print(number)
    }
    print("Acabou!!")
}
count2()


//45
func count() {
    var initialValue = 3
    var lastValue = 10
    var step = 2
    if initialValue > lastValue {
        let number = initialValue
        initialValue = lastValue
        lastValue = number
    }
    while initialValue <= lastValue {
        print(initialValue)
        initialValue = initialValue + step
    }
    print("Acabou!")
}
count()

 //  FOR /IN
func count() {
    var initialValue = 3
    var lastValue = 10
    var step = 2
    if initialValue > lastValue {
        let numberNew = initialValue
        initialValue = lastValue
        lastValue = numberNew
    }
    for number in stride(from: 3, to: 10, by: 2) {
            print(number)
    }
    print("Acabou!")
}
count()


//46

func add() {
    var value1 = 6
    var value2 = 100
    var sum = 0
    for number in value1...value2{
        if number % 2 == 0 {
           //y print(sum, number)
            sum = sum + number
        }
    }
    
   print("Acabou!!!")
   print(sum)
}
add()


//47

func add() {
    var value1 = 0
    var value2 = 500
    var sum = 0
    for number in (value1...value2).reversed() {
        if number % 50 == 0 {
            print(sum, number)
            sum = sum + number
        }
    }
    print(sum)
}
add()


//48
func add() {
    let values: [Int] = [3,8,9,4,1,7,2]
    var total:Int = 0
    for number in  values {
        total = total + number
    }
    print(total)
}
add()


//49
func adc(){
    let numbers: [Int] = [2,3,1,5,6,7,8,9]
    var isPar = 0
    var isImpar = 0
    for number in numbers {
        if number % 2 == 0 {
            isPar += 1
        } else {
            isImpar += 1
        }
    }
    print(isImpar)
    print(isPar)
}
adc()


func sort() {
    //let value = Int.random(in: 0...10) // FORMULA PARA SORTEIO DE numeros de 0 - 10. colocar os numeros entre ()
    var divisibleByThree = 0
    var greaterThanFive = 0
    var numberSort = ""
      // var e let criadas somente quando tiver necessidade de usar, cada passo de cada vez.
    for _ in 1...20 { // faz o sorteio 20 vezes
        let value = Int.random(in: 0...10)
        numberSort = numberSort + "\(value) "
         // demonstrar os numeros sorteados em uma variavel
        if value > 5 {
            greaterThanFive += 1
        }
         // demonstrar dentre os numeros sorteados quais sao maiores que 5
        if value % 3 == 0 {
            divisibleByThree += 1
        }  // demonstrar dentre os sorteados os divisiveis por 3
    }
    
    print("Os números sorteados foram \(numberSort).")
    print("Quantidade de números maiores que 5 é \(greaterThanFive).")
    print("Quantidade de números divisiveis por 3 é \(divisibleByThree).")
}
sort()


//51
func price() {
    let numbers = [4.88, 5.50, 8.10, 2.0, 12.99, 15.30, 3.30, 7.50 ]
    var larger = numbers[0]
    var smaller = numbers[0]
    
    for number in numbers {
        if number > larger {
            larger = number
        }
        
        if number < smaller {
            smaller = number
        }
    }
    
    let message = "O maior preço é \(larger), e o menor preço é \(smaller)."
    print(message)
    
}
price()


//52
func classify() {
    let people = [ 3, 7, 9, 11, 14, 16, 18, 20, 25, 31]
    var age = people[0]
    var total = 0
    var average = 0
    var adult = 0
    var baby = 0
    
    for number in people {
        total = total + number
        average = total / people.count
        
        if number > 18 {
            adult += 1
        } else {
            baby += 1
        }
        
        if number > age {
            age = number
        }
    }
    
    let messageA = "A idade média do grupo é de \(average) anos."
    let messageB = "Existem \(adult) pessoas com mais de 18 anos."
    let messageC = "Existem \(baby) pessoas com menos de 5 anos."
    let messageD = "A maior idade lida é \(age)."
    print(messageA)
    print(messageB)
    print(messageC)
    print(messageD)
    
}
 classify()


/*/53

func measure() {
    let people: [(weight:Double, height:Double)] = [
        (weight: 48.0, height: 1.52),
        (weight: 49.9, height: 1.58),
        (weight: 65.0, height: 1.62),
        (weight: 68.5, height: 1.70),
        (weight: 72.0, height: 1.85),
        (weight: 87.5, height: 1.92),
        (weight: 110.0, height: 1.96)
        ]
    
    var calculate: Double = 0.0
    var averageHeight: Double = 0.0
    var aboveWeight = 0
    var smallest = 0
    var greater = 0
    
    for number in people {
        calculate = calculate + number.height
        averageHeight = calculate / Double(people.count)
        
        if number.weight > 90.0 {
            aboveWeight += 1
        }
        
        if number.weight < 50.0 && number.height < 1.60 {
            smallest += 1
        }
        
        if number.weight > 90 && number.height > 1.90 {
            greater += 1
        }
    }
    
    let messageA = " A média de altura do grupo é de \(averageHeight)cm."
    let messageB = " Quantidade de pessoas que pesam mais de 90kg é \(aboveWeight)"
    let messageC = " Quantidade de pessoas que pesam menos de 50kg e tem menos de 1.60cm de altura é \(smallest)."
    let messageD = " Quantidade de pessoas que pesam mais de 90kg e tem mais de 1.90cm de altura é \(greater)."

    print(messageA)
    print(messageB)
    print(messageC)
    print(messageD)
}
measure()
*/
