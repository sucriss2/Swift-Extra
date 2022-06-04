import UIKit

var greeting = "Hello, playground"


//1 v,f,f,v,f,f,f,v,f,v

//2
var signAutograph = { (name: String) in
    print("Para \(name), meu fã número 1!")
}
signAutograph("Fabrício")

var paintPicture = { () in
    print("Onde estão minhas aquarelas?")
}
paintPicture()

let upgrade = { () in
    print("Atualizando...")
}
upgrade()

let printDocument = { (copies: Int) in
    for _ in 1...copies {
        print("Imprimindo...")
    }
}
printDocument(3)

let calculateResult = { (answer: Int)  in
    if answer == 42 {
        print ("Você está certo!")
    } else {
        print("tente novamente.")
    }
}
calculateResult(42)

let rowBoat = { (distance: Int) in
    for _ in 1...distance {
        print("Estou remando 1km.")
    }
}
rowBoat(5)

let shovelSnow = { ( depth: Int) -> String in
    if depth < 1 {
        return "OK, eu posso fazer isso..."
    } else {
        return "Eu preciso de ajuda."
    }
}
shovelSnow(2)

let callNumber = { (number: Int) -> String in
    return "Chamando..."
}
callNumber(1)

let goSurfing = { ( waveHeight: Int) -> String in
    if waveHeight < 5 {
        return "Vamos!"
    } else if waveHeight < 10 {
        return "Isto pode ser complicado."
    } else if waveHeight < 20 {
        return "Somente um especialista consegue."
    } else {
        return "De jeito nenhum!"
    }
}
goSurfing(5)


//3
let printGreeting = { () in
    print("Olá! Seja bem vindo.")
}
printGreeting()

//4
let sum = { (num1: Int, num2: Int) in
    num1 + num2
}

let sub = { (num1: Int, num2: Int) in
    num1 - num2
}

let mult = { (num1: Int, num2: Int) in
    num1 * num2
}

let div = { (num1: Int, num2: Int) in
    num1 / num2
}

let mod = { (num1: Int, num2: Int) in
    num1 % num2
}

sum(5, 5)
sub(5, 5)
mult(5, 5)
div(5, 5)
mod(5, 5)
sum(sub(10, 8), mult(5, 5)) // closure sum recebendo sub e mult.
print(sum(sub(10, 8), mult(5, 5)))

//5
let bigget = { (a: Int, b: Int, c: Int)  in
    if a > b && a > c {
        print("--> A <-- é o maior numero.")
    } else if a < b && b > c {
        print("--> B <-- é o maior numero.")
    } else {
        print("--> C <-- é o maior numero.")
    }
}

bigget(1, 5, 4)
bigget(10, 8, 8)
bigget(1, 1, 9)
bigget(5, 2, 4)

//6
let vote = { (year: Int, birth: Int) -> String in
    let voter = year - birth
    switch voter {
    case 18... :
        return("Voto obrigatorio")
    case 16,17 :
        return("Voto opcional")
    default:
        return("Voto negado")
    }
}

let ana = vote(2022, 2015)
let joao = vote(2022, 2005)
let suh = vote(2022, 1989)
print(suh, ana, joao)

//7
let reverse = { (word: String) -> String in
    return String(word.reversed())
}
let fabricio = reverse("FABRICIO")


let reverse2 = { (word: String) -> String in
    var newWord = ""
    for character in word.reversed() {
        newWord.append(character)
    }
    return newWord
}
reverse2("JOSEFINA_LUCIA")

//8
let numbers = [1, 2, 3, 4, 6, 8, 9, 3, 12, 11]

let multiples = numbers.filter { number -> Bool in
    number % 3 == 0
}
print(multiples)
print("&&&&&&&&&&&&&&&&&&")

//9
func manipulate(numbers: [Int], algorith:(Int) -> Int){
    for number in numbers {
        let result = algorith(number)
        print("===> \(result) <===\n" +
              "------------")
    }
}
let dobro = manipulate(numbers: [4,6,8]) { number in
    number * number
}
print("&&&---&&&---&&&---&&&---&&&")

//10
func combineArray(valuesA: [Int], valuesB: [Int], multiply: (Int, Int) -> Int) -> [Int] {
    var totalilty: [Int] = []
    for number in 0..<valuesA.count{
        totalilty.append(multiply(valuesA[number], valuesB[number]))
    }
    return totalilty
}

let umdois = combineArray(valuesA: [3,5,7], valuesB: [5,5,5]) { value1, value2 in
    value1 * value2
}
print(umdois)










//for number in numbers {
//    let result = algorith(number)
//    print("-----> \(result) <-----")
//}
//}
//
//manipulate(numbers: [1,2,3]) { number in
//number * number
