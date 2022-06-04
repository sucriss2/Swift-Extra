import UIKit
import os

var greeting = "Hello, playground"

//exercicios Closures


//1// V-F-F-V-F-F-F-V-F-V

//2
//
var signAutograph = {(_ name: String)  in
    print ("Para \(name), meu fã número 1!")
}
signAutograph("Lisa")

//
var paintPicture = {
    print("Onde estão minhas aquarelas?")
}

//
let upgrade = {
    print("Upgrading...")
}
upgrade()

//
let printDocument = {(copies: Int) in
    for _ in 1...copies {
        print("Imprimindo o documento...")
    }
}
printDocument(3)

//
let calculateResult = {(answer: Int) in
    if answer == 42 {
        print("Você está certo!")
    }else {
        print("Tente novamente")
    }
}
calculateResult(42)
calculateResult(32)

//
let rowBoat = {(distance: Int) in
    for _ in 1...distance {
        print("Estou remando 1km.")
    }
}
rowBoat(5)

//
let shovelSnow = { (depht: Int) -> String in
    if depht < 1 {
        return "OK, eu posso fazer isso..."
    } else {
        return "Eu preciso de ajuda!"
    }
}
shovelSnow(1)

//
let callNumber = { (number: Int) -> String in
    return "Chamando..."
}
callNumber(2)

//
let goSurfing = { (waveHeight: Int) -> String in
    if waveHeight < 5 {
        return "Vamos!"
    }else if waveHeight < 10 {
        return "Isto pode ser complicado"
    }else if waveHeight < 20 {
        return "Somente um especialista consegue"
    }else {
        return "De jeito nenhum!"
    }
}
goSurfing(4)
print(goSurfing(4))

//3
var printGreeting = { ()  in
    print("Olá! Seja bem vindo.")
}
printGreeting()


//4
let sum = { (num1: Int, num2: Int) -> Int in
    return num1 + num2
}

let sub = { (num1: Int, num2: Int) -> Int in
    return num1 - num2
}

let mult = { (num1: Int, num2: Int) -> Int in
    return num1 * num2
}

let div = { (num1: Int, num2: Int) -> Int in
    return num1 / num2
}

let mod = { (num1: Int, num2: Int) -> Int in
    return num1 % num2
}

sum(3, 4)
sub(8, 2)
mult(2, 7)
div(8, 4)
mod(10, 2)

//5
let biggest = { (value1: Int, value2: Int, value3: Int) -> Int in
    if value1 > value2 && value1 > value3 {
        return value1
    }else if value2 > value3 && value2 > value1 {
        return value2
    }else {
        return value3
    }
}

biggest(30, 20, 10)
biggest(11, 51, 22)
biggest(23, 31, 45)

//6
//- Caso a pessoa tenha menos de 16 anos, deve retornar: "Voto negado"
//- Caso a pessoa tenha entre 16 anos e 17 anos, deve retornar: "Voto opcional"
//- Caso a pessoa tenha 18 ou mais anos, deve retornar: "Voto obrigatório"
let vote = { (year: Int, birth: Int) -> String in
    let voter:Int = year - birth
    //print(voter)
    switch voter {
    case 18... :
        return "Voto obrigatorio"
    case 16,17:
        return "Voto opcional"
    default:
        return "Voto negado"
    }
}
let ana = vote(2022, 1989)
let julia = vote(2022, 2007)
let livia = vote(2022, 2005)

//7
let reverseWord = { (name: String) -> String in
   let mirror = name.reversed()
    return String(mirror)
}
let programacao = reverseWord("Programação")
let mobile = reverseWord("Mobile")
let desenvolvimento = reverseWord("Desenvolvimento")

//8
func filterNumbers(numbers: [Int]) {
    var multiple3: [Int] = []
    
    for number in numbers {
        if number % 3 == 0{
            multiple3.append(number)
            //print(number)
        }
    }
}
let numeros: () = filterNumbers(numbers: [1, 2, 3, 4, 6, 8, 9, 3, 12, 11])

//9
func manipulate(numbers: [Int], algorithm : (Int) -> Int) {
    for number in numbers {
        let result = algorithm(number)
        print("-> \(result)")
    }
}

manipulate( numbers: [1,2,3,4,5], algorithm: { (value1: Int) -> Int in
    return value1 * value1
})
print("--------%%%%%%%%%%%---------")
//manipulate(numbers: [3,5,7], algorithm: { (value1: Int) -> Int in
//    return value1 * 3
//})

//10
func combineArrays(numbersA: [Int], numbersB: [Int], multiply: (Int, Int) -> Int) -> [Int] {
    var newArrays: [Int] = []
    for number in 0..<numbersA.count{
        newArrays.append(multiply(numbersA[number], numbersB[number]))
    }
    return newArrays
}
    
let newArrays = combineArrays(numbersA: [1,2,3], numbersB: [5,5,5]) { value1, value2 in
    value1 * value2
}

print(newArrays)


