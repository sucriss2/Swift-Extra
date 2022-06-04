//
//  main.swift
//  Project62
//
//  Created by Suh on 29/12/21.
//

import Foundation

//print("Entre com o seu peso: ")
//let weight = readLine()
//
//print("Entre com a sua altura")
//let height = readLine()
//
//print("Seu peso e \(weight) e sua altyra e \(height)")

/* //62
 func getInfo() {
    var getMoreInformation = true
    var sumAge = 0
    var people = 0
    var average = 0
    var adult = 0
    
    while getMoreInformation {
        print("Escreva a sua idade")
        let age = readLine()
        people += 1
        
        print("Deseja colocar outra idade? (coloque S ou N)")
        let option = readLine()
        
        if option == "n" || option == "N" {
            getMoreInformation = false
        }
        
        let intAge = Int(age!)
        sumAge = sumAge + intAge!
        average = sumAge / people

        if intAge! >= 21 {
            adult += 1
        }
        
    }
    
    print(people)
    print(average)
    print(adult)
}

getInfo()
*/

/*/63
func getInfor() {
    var getMoreInformation = true
    var sumAge = 0
    var smaller = 999
    var value = 0
    var average = 0
    var isPar = 0
    
    while getMoreInformation {
        print("Escreva a sua idade")
        let age = readLine()
        value += 1
        
        if Int(age!)! % 2 == 0 {
            isPar += 1
        }
        
        print("Deseja continuar? (coloque S ou N")
        let option = readLine()
        
        
        if option == "n" || option == "N" {
            getMoreInformation = false
        }
        
        sumAge = sumAge + Int(age!)!
        
        /*if Int(age!)! <= 0 {
            smaller = Int(age!)!
        }*/
        
        if Int(age!)! < smaller {
            smaller = Int(age!)!
        }
        
        average = sumAge / value
        
        
        
    }
    
    print(sumAge)
    print(smaller)
    print(average)
    print(isPar)
}
getInfor()
*/

/*/66
 
 func multiple() {
     print("digite um valor")
     let value = readLine()
     let multiplicando = Int(value!)!
     
     print("===== TABUADA DE \(multiplicando) =====")
          
     for multiplier in 1...10 {
         let result = multiplicando * multiplier
         print("\(multiplicando) x \(multiplier) = \(result)")
     }
  }
 multiple() */


/*/67
func count() {
    
    print("digite um valor")
    let value = readLine()

    for number in 0...Int(value!)! {
        print(number)
        
    }
    
    print("Fim!")
}
count()
*/
 
//68
func register() {
    
    var isFemale = true
    var female = 0
    var weightFemale = 0
    var sumWeightFemale = 0
    var averageWeight = 0
    let quantity = 4
    var maleWeight = 0
    var maleLarger = 0
    var heavyMale = 0
    
    for _ in 1...quantity {
        print("Qual seu genero sexual? M(macho) ou F(femea)")
        let gender = readLine()
        
        print("Digite seu peso.")
        let weight = readLine()
        
        if gender == "F" || gender == "f" {
            female += 1
            weightFemale = Int(weight!)!
            sumWeightFemale = sumWeightFemale + weightFemale
            averageWeight = sumWeightFemale / female
            
        } else if  Int(weight!)! > maleWeight {
            maleWeight = Int(weight!)!
            maleLarger = maleWeight
            
            if Int(weight!)! > 99 {
                heavyMale += 1
            }
        }
    }

    print(female)
    print(averageWeight)
    print(maleWeight)
    print(heavyMale)
    
}

register()

