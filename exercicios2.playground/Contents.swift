import UIKit
import Darwin

var greeting = "Hello, playground"

//1

var message:String = "Olá, Mundo!"
print(message)

//2

func welcome(name: String) {
    
    //let name: String = "João da Silva"
  print("Olá \(name), é um prazer te conhecer!")
}
welcome(name: "Maria do Arroz")


//3
func pay(employee: String, salary: Double, month: String) {
    
    //let employee: String = "Maria do Carmo"
    //let salary: Double = 1850.45
    //let month: String = "Junho"

  print("O funcionário \(employee) tem um salário de R$\(salary) em \(month).")

}
pay(employee: "Maria", salary: 1300.00, month: "Maio")

//4
func totalInt(number1: Int, number2: Int) {
  
    //var number1 = 8
    //var number2 = 5
    let sum = number1 + number2
     print("A soma entre \(number1) e \(number2) é igual a \(sum).")
}
totalInt(number1: 8, number2: 5)

//5

func assess(note1: Double, note2: Double) {
    
    //var note1 = 4.5
    //var note2 = 8.5
    let average = (note1 + note2) / 2
    print("A média entre \(note1) e \(note2) é igual \(average).")
}
assess(note1: 4.5, note2: 8.5)

//6

func order(value: Int) {
    //var value: Int = 9
    let previous: Int = value - 1
    let after: Int = value + 1
    print("O antecessor de \(value) é \(previous).")
    print("O sucessor de \(value) é \(after).")
}
order(value: 9)


//7
func operate(value: Double) {
    
    //var value: Double = 3.5
    let duplo: Double = value * 2
    let third: Double = value / 3
    print("O dobro de \(value) é \(duplo).")
    print("A terça parte de \(value) é \(third).")
}
operate(value: 3.5)


//8

func convert(valueMetre: Double) {
    //var valueMetre: Double = 185.72
    let kilometer: Double = valueMetre / 1_000
    let hectometer: Double = valueMetre / 100
    let decameter: Double = valueMetre / 10
    let decimeter: Double = valueMetre * 10
    let centimeter: Double = valueMetre * 100
    let millimeter: Double = valueMetre * 1_000
    print("A distância de \(valueMetre)m corresponde a \(kilometer)Km .")
    print("A distância de \(valueMetre)m corresponde a \(hectometer)Hm .")
    print("A distância de \(valueMetre)m corresponde a \(decameter)Dam .")
    print("A distância de \(valueMetre)m corresponde a \(decimeter)dm .")
    print("A distância de \(valueMetre)m corresponde a \(centimeter)cm .")
    print("A distância de \(valueMetre)m corresponde a \(millimeter)mm .")
}
convert(valueMetre: 185.72)


//9
func change(valueDolar: Double, valueReal: Double) -> String {
    
    //let valueDolar: Double = 3.45
    //var valueReal: Double = 345
    let converted: Double = valueReal / valueDolar
    
    
    return "Fulano de Tal tem em carteira R$\(valueReal)0, e pode comprar $\(converted)0 dólares."
}
change(valueDolar: 3.45, valueReal: 345)

//10
func paint(height: Double, widht: Double ) -> String {
    //var height: Double = 6
    //var widht: Double = 4
    let squareMetre: Double = height * widht
    let literInk: Double = squareMetre * 0.5
    //let literInk: Double = squareMetre / 2
    //let proporcao = literInk / squareMetre
   return "Séra necessario \(literInk) litros de tinta para pintar uma parede com \(squareMetre) metros quadrados"
   // return "Sera usado 0.5 litros de tinta a cada 1 metro quadrado"
}
paint(height: 6, widht: 4)


//12
func lower(product: Double) -> String {
    //var product: Double = 120
    let discount: Double = 5 / 100 * product
    let promocional: Double = product - discount
    
    return "Preço promocional do produto R$ \(promocional)0"
}
lower(product: 120)

//13

func raiseWage(name: String, wage: Double) -> String {
    //var name: String = "José da Silva"
    //var wage: Double = 1200.5
    let newWage: Double = (15 / 100 * wage) + wage

    return "O novo salário de \(name) será de R$\(newWage)."
}
raiseWage(name: "maria", wage: 1200)

//14

func locate(dailyCar : Double, carKm : Double) -> String {
    //var dailyCar : Double = 4
    //var carKm : Double = 540
    let dailyRate: Double = 90
    let traveledKm: Double = 0.2
    let taxCar = dailyRate * dailyCar
    let taxKm = traveledKm * carKm
    let cost = taxKm + taxCar
    
    return "Valor total a cobrar R$\(cost)0"
}
locate(dailyCar: 4, carKm: 540)

//15

func wage(daywork: Double) -> Double {
    //var daywork: Double = 24
    let valueHour: Double = 25
    let workload: Double = 8
    let wageMonth = valueHour * workload * daywork
    return wageMonth
}

func testWage() {
    let result = wage(daywork: 24)
    let msg = "O salario do carinha e de \(result)"
    print(msg)
}

testWage()

//16

func reduction(cigarette: Double, yearSmoke: Double) -> Double {
    
    //var cigarette: Double = 8
   // var yearSmoke: Double = 5
    let convectYear: Double = yearSmoke * 365
    let dayTime: Double = (cigarette * 10) / 60
    let calculExpec = dayTime * 24
    return calculExpec
}
reduction(cigarette: 8, yearSmoke: 5)


//17

func speed(carSpeed: Double, limit: Double) -> String {
    //var carSpeed: Double = 50
    //let limit: Double = 80
    let tax:Double = 5
    if carSpeed > limit {
        let taxAbove: Double = (carSpeed - limit) * tax
        return "Motorista multado em R$\(taxAbove)0."
        
    } else {
        return "Motorista dentro da velocidade permitida"
    }
}
speed(carSpeed: 120, limit: 80)


//18
func vote(birth: Int, ageDay: Int) -> String {
    //var birth: Int = 1998
   // var ageDay: Int = 2021
    let ageMin: Int = 16
    if ageDay - birth > ageMin {
        return "Você pode votar"
    } else {
        return "Você não pode votar"
    }
}
vote(birth: 2011, ageDay: 2021)

//19
func evaluate(name: String, grade1: Double, grade2: Double) -> String {
    //var name: String = "Lívia Vaz"
    //var grade1: Double = 8.5
    //var grade2: Double = 9.5
    let average: Double = (grade1 + grade2) / 2
    let mean: Double = 7
    if  average >= mean {
        return "\(name) está aprovado"
    } else {
        return "\(name) está reprovado"
    }
}
evaluate(name: "Lívia Vaz", grade1: 8.5, grade2: 9.5)

//20
func value(number: Int) -> String {
    //var number: Int = 8
    let isEven = number % 2 == 0
    if isEven {
        return "Número Par"
    } else {
        return "Número Ímpar "
    }
}
value(number: 8)

//21
func leapYear(year: Int) -> String {
    //var year = 2000
//    if year % 4 == 0 && !(year % 100 == 0) {
//        return "O ano de \(year) é bissexto."
//    } else if year % 400 == 0 {
//        return "O ano de \(year) é bissexto."
//    } else {
//        return "O ano de \(year) não é bissexto"
//    }
    
//    if year % 400 == 0 {
//        return "O ano de \(year) é bissexto."
//    } else if year % 4 == 0 && !(year % 100 == 0) {
//        return "O ano de \(year) é bissexto."
//    } else {
//        return "O ano de \(year) não é bissexto"
//    }
    
//    if year % 400 == 0 || (year % 4 == 0 && !(year % 100 == 0)) {
//        return "O ano de \(year) é bissexto."
//    } else {
//        return "O ano de \(year) não é bissexto"
//    }
      
    if year % 400 == 0 {
        return "O ano de \(year) é bissexto."
    } else {
        if year % 100 == 0 {
            return "O ano de \(year) não é bissexto"
        } else {
            return "O ano de \(year) é bissexto."
        }
    }
    
}

print(leapYear(year: 2000))
print(leapYear(year: 2100))
print(leapYear(year: 2104))

