import UIKit

var greeting = "Hello, playground"

/*/22

func militaryEnlistment (name:String, birth:Int, curretYear:Int) -> String {
    //var name = "João da Silva"
    //var birth = 2003
    let draft = 18
    //let curretYear = 2021
    let ratioAge = curretYear - birth
    if ratioAge < draft {
        return "\(name) faltam \(ratioAge) ano(s) para o seu alistamento militar."
    } else if ratioAge > draft {
        return "\(name) ja se passaram \(ratioAge - draft) ano(s) do seu alistamento militar."
    }else {
        return "\(name), ano de alistamento militar"
    }
}
militaryEnlistment(name: "Pedro Ferreira", birth: 2010, curretYear: 2021)
*/

/*/23

func saleWoman (name: String, isFemale: Bool, shopping: Double) -> String {
    //var name = "Patricia"
    //let isFemale: Bool = true
    //var shopping: Double = 500
    if isFemale {
        let rebateWoman = shopping - (shopping * 15 / 100)
        return "O valor das compras de \(name), será de R$\(rebateWoman)0. "
    } else {
        let rebateMan = shopping - (shopping * 5 / 100)
        return "O valor das compras de \(name), será de R$\(rebateMan)0. "
    }
}
saleWoman(name: "Patricia", isFemale: true, shopping: 500)
saleWoman(name: "João", isFemale: false, shopping: 500)
*/

/*/24
func saleWoman (name: String, isFemale: Bool, shopping: Double, tax: Double) -> String {
    //var name = "Patricia"
    //let isFemale: Bool = true
    //var shopping: Double = 500
    //var tax: Double = 5
    let descountTax: Double = shopping - (shopping * tax / 100)
    if isFemale {
        _ = 15
        return "O valor das compras de \(name), será de R$\(descountTax)0. "
    } else {
        _ = 5
        return "O valor das compras de \(name), será de R$\(descountTax)0. "
    }
}
 saleWoman(name: "Patricia", isFemale: true, shopping: 500, tax: 15)
 saleWoman(name: "João", isFemale: false, shopping: 500, tax: 5)
*/

/*func way (distance: Double) -> Double {
    //var distance: Double = 100
    let tax1: Double = distance * 0.45
    let tax2: Double = distance * 0.50
    
    if distance <= 200 {
        return tax1
    } else {
        return tax2
    }
}
way(distance: 200)
way(distance: 201)
way(distance: 199)

print(way(distance: 200))
print(way(distance: 201))
print(way(distance: 199))

exemplo 2
func way2 (distance: Double) -> Double {
    //var distance: Double = 100
    let tax1: Double = 0.50
    let tax2: Double = 0.45
    
    if distance <= 200 {
        return tax1 * distance
    } else {
        return tax2 * distance
    }
}
*/

//25 DESAFIO
/* func desafio(reta1: Int, reta2: Int, reta3: Int) -> String {
    //var reta1 = 21
    //var reta2 = 10
    //var reta3 = 10
    if reta1 > reta2 + reta3 && reta3 + reta1 <= reta2 && reta1 + reta2 <= reta3 {
        return "possivel formar triangulo"
    } else {
        return "nao é possivel formar um triangulo"
    }
}
desafio(reta1: 10, reta2: 10, reta3: 10)
desafio(reta1: 8, reta2: 10, reta3: 10)
*/
 
 /*/26
func liken (number1: Int, number2: Int) -> String {
    //var number1 = 34
    //var number2 = 34
    if  number1 > number2 {
        return "O primeiro valor é o maior"
    } else if number1 < number2 {
        return "O segundo valor é maior"
    } else {
        return "Não existe valor maior, os dois são igual."
    }
}
liken(number1: 34, number2: 34)
liken(number1: 9, number2: 20)
liken(number1: 28, number2: 12)
 */

/*27
func approve(note1: Double, note2: Double) -> String {
    //var note1 = 7.5
    //var note2 = 8.5
    let average = (note1 + note2) / 2
    if average >= 7 {
        return "aprovado"
    } else if average >= 5 {
        return "Recuperação"
    } else {
        return "Reprovado"
    }
}
approve(note1: 7.5, note2: 8.5)
approve(note1: 5, note2: 5)
approve(note1: 4, note2: 4)
*/

/*/28
func squareMeter(width: Double, length: Double)-> String {
    //var width = 100
    //var length = 50
    let breadth = width * length
    
    if breadth > 500 {
        return "TERRENO VIP"
    }else if breadth > 100 {
        return "TERRENO MASTER"
    }else {3
        return "TERRENO POPULAR"
    }
}
squareMeter(width: 10, length: 50)
squareMeter(width: 20, length: 30)
squareMeter(width: 5, length: 12)
*/

/*/29
func adjustWage(name: String, wage: Double, worked: Double) -> String {
    //let rise1 = 1.03 * wage
    //let rise2 = 1.125 * wage
    //let rise3 = 1.20 * wage
    var newSalary = 0.0
    
    if worked < 3 {
        newSalary = wage * 1.03
    } else if worked < 10 {
        newSalary = wage * 1.125
    } else {
        newSalary = wage * 1.20
    }
    return "O funcionario \(name) teve salario reajustado para R$\(newSalary)"
}

adjustWage(name: "Lucas", wage: 1000, worked: 2)
adjustWage(name: "Pedro", wage: 1000, worked: 5)
adjustWage(name: "Ana", wage: 1000, worked: 11)


//30
func desafio(reta1: Int, reta2: Int, reta3: Int) -> String {
    if reta1 == reta2 && reta3 == reta1 {
        return "Triângulo Equilátero"
    } else if reta1 == reta2 || reta2 == reta3 || reta1 == reta3 {
        return "Triângulo Isósceles"
    } else {
        return "Triangulo escaleno"
    }
}
desafio(reta1: 10, reta2: 5, reta3: 15)
desafio(reta1: 10, reta2: 5, reta3: 5)
desafio(reta1: 10, reta2: 5, reta3: 10)
desafio(reta1: 3, reta2: 3, reta3: 6)
desafio(reta1: 10, reta2: 10, reta3: 10)


//33
func lend(loan: Double, wage: Double, year: Double) -> String {
    //var loan: Double = 75_000.0
    //var wage: Double = 1_500.0
    //var year: Double = 15
    let term: Double = year * 12
    let quota: Double = loan / term
    let limit: Double = wage * 0.30
    if  limit < quota {
        return "Empréstimo negado"
    } else {
        return "Valor da prestação mensal de R$ \(quota)."
    }
}
lend(loan: 75000, wage: 1500, year: 15)
lend(loan: 75000, wage: 1000, year: 15)



//34
func imc(weight: Double, height: Double) {
    let calcImc = weight / (height * height)
    switch calcImc {
    case ..<18.5:
        print("Abaixo do peso")
    case 18.5..<25:
        print("Peso Ideal")
    case 25..<30:
        print("Sobrepeso")
    case 30..<40:
        print("Obesidade")
    default:
        print("Obesidade Mórbida")
    }
}
imc(weight: 120, height: 1.70)
imc(weight: 95, height: 1.70)
imc(weight: 80, height: 1.70)
imc(weight: 70, height: 1.70)
imc(weight: 50, height: 1.70)

    
    if calcImc < 18.5 {
        return "Abaixo do peso"
    } else if calcImc < 25 {
        return "Peso Ideal"
    } else if calcImc < 30 {
        return "Sobrepeso"
    } else if calcImc < 40 {
        return "Obesidade"
    } else {
        return "Obesidade Mórbida"
    }
}
imc(weight: 120, height: 1.70)
imc(weight: 95, height: 1.70)
imc(weight: 80, height: 1.70)
imc(weight: 70, height: 1.70)
imc(weight: 50, height: 1.70)
*/

/*/35
/func rentCar(isCarVip: Bool, dialy: Int, kmRotated: Int) -> Double {
   //var isCarVip: Bool = true
   //var dialy: Int = 10
   // var kmRotated: Int = 200
    var txKm: Double = 0
    var txDialy: Int = 0
    
    if isCarVip {
        txDialy = 150
        if kmRotated >= 200 {
            txKm = 0.25
        } else {
            txKm = 0.30
        }
    } else {
        txDialy = 90
        if kmRotated >= 100 {
            txKm = 0.20
        } else {
            txKm = 0.25
        }
    }
    let price = Double(txDialy * dialy) + (Double(kmRotated) * txKm)
    return price
}
rentCar(isCarVip: true, dialy: 10, kmRotated: 200)
rentCar(isCarVip: true, dialy: 10, kmRotated: 100)
rentCar(isCarVip: false, dialy: 10, kmRotated: 100)
rentCar(isCarVip: false, dialy: 10, kmRotated: 50)


func rentCar2(isCarVip: Bool, dialy: Int, kmRotated: Int) -> Double {
    var txKm: Double = 0
    var txDialy: Int = 90
    
    if isCarVip {
        txDialy = 150
        txKm = 0.30
        
        if kmRotated >= 200 {
            txKm = 0.25
        }
    } else {
        txDialy = 90
        txKm = 0.25
        
        if kmRotated >= 100 {
            txKm = 0.20
        }
    }
    
    let price = Double(txDialy * dialy) + (Double(kmRotated) * txKm)
    
    return price
}
rentCar2(isCarVip: true, dialy: 10, kmRotated: 200)
rentCar2(isCarVip: true, dialy: 10, kmRotated: 100)
rentCar2(isCarVip: false, dialy: 10, kmRotated: 100)
rentCar2(isCarVip: false, dialy: 10, kmRotated: 50)
*/


/*/36

func calculateScore(hour:Int) -> Double {
    //var hour:Int = 15
    let payment: Double = 0.05
    var point: Int = 0
    if hour > 20 {
        point = 10
    } else if hour > 10 {
        point = 5
    } else {
      point = 2
    }
    let price = Double(point * hour) * payment
    return price
}
 
func showScore(hourExercised:Int) {
    let score = calculateScore(hour: hourExercised)
    print("Seu score é de \(score)")
}

showScore(hourExercised: 15)
showScore(hourExercised: 10)
showScore(hourExercised: 25)

//calculateScore(hour: 15)
//calculateScore(hour: 10)
//calculateScore(hour: 25)



//37
func readjust(isWoman: Bool, wage: Double, yearWork: Int) -> Double {
    //var isWoman: Bool = true
    //var wage: Double = 2000
    //var yearWork: Int = 16
    var bonus: Double = 0
    if isWoman {
        switch yearWork {
        case 0..<15 :
            bonus = 1.05
        case 15...20 :
            bonus = 1.12
        default:
            bonus = 1.23
        }
    } else {
        switch yearWork {
        case 0..<20 :
            bonus = 1.03
        case 20...30 :
            bonus = 1.13
        default:
            bonus = 1.25
        }
    }
    let newWage: Double = wage * bonus
    return newWage
}

readjust(isWoman: true, wage: 2000, yearWork: 16)
readjust(isWoman: false, wage: 2000, yearWork: 22)
*/



