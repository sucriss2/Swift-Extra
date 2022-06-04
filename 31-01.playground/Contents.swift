import UIKit

var greeting = "Hello, playground"


func firstElement(averages: [Double]) -> Double? {
    var averages = [98.5, 97.5, 99.0]

    if averages.count > 0 {
        return averages[0]
    }

    return nil
}

firstElement(averages: [98.5, 97.5, 99.0])
print(firstElement(averages: [98.5, 97.5, 99.0])!)

func firstCities(cities: [String]) -> String? {
var cities: [String] = ["London", "Paris", "New York"]
   if cities.count > 0 {
      return cities[0]
   }
   return nil
}

firstCities(cities: ["London", "Paris", "New York"])
print(firstCities(cities: ["London", "Paris", "New York"])!)


func firstReadings(readings: [Bool]) -> Bool? {
    var readings: [Bool] = [false, false, true, false]
    if readings.count > 0 {
        return readings[0]
    }
    return nil
}

firstReadings(readings: [false, false, true, false])
print(firstReadings(readings: [false, false, true, false])!)


func firstHeight(height: [String]) -> String? {
    let height: [String] = ["14.0"]
    if height.count > 0 {
        return height[0]
    }
    return nil
}

firstHeight(height: ["14.0"])
print(firstHeight(height: ["14.0"])!)


func firstScores(scores: [Int]) -> Int? {
    //var scores: [Int] = [10, 12, 9]
    if scores.count > 0 {
        return scores[0]
    }
    return nil
}

firstScores(scores: [10,12,9])
print(firstScores(scores: [10,12,9])!)
firstScores(scores: [])
print(firstScores(scores: []))

//let breeds = ["Labrador", "Chihuahua"]


func firstBreeds(breeds: [String]) {
    
     guard let breed = breeds.first  else {
        print("Breed Nulo")
        return
     }
     print("A primeira raça é \(breed)")
}

firstBreeds(breeds: ["Labrador", "Chihuahua"])


//let playlistSizes = [100, 200, 300]

func firstPlaylistsizes(playlistesizes: [Int]) {
    guard let playlistesize = playlistesizes.first else {
        print("Vazio")
        return
    }
    print("O primeiro número é \(playlistesize)")
}

firstPlaylistsizes(playlistesizes: [100, 200, 300])
firstPlaylistsizes(playlistesizes: [])


// Faça uma função chamada repeatPrint. Ela deve receber uma mensagem (String) e um contador, porém o contador é um Int opcional (Int?). Essa função deve imprimir a mensagem a quantidade de vezes indicada no contador, porém, caso o valor do contador seja nulo, ela deve imprimir uma única vez a mensagem. Teste sua função inserindo no contador um valor nulo e um valor diferente de nulo.

func repeatPrint(message: String, count: Int?) {
    if let count = count {
        for _ in 1...count {
            print(message)
        }
    } else {
        print(message)
    }

}

repeatPrint(message: "Óla", count: 3)
repeatPrint(message: "Óla", count: nil)

//------------------------------//----------------------------//------------------------------//

func multiple(number: Int) -> String? {
    if number % 3 == 0 && number % 5 != 0 {
        return "Fizz"
    } else if number % 3 != 0 && number % 5 == 0 {
        return "Buzz"
    } else if number % 3 == 0 && number % 5 == 0 {
        return "FizzBuzz"
    } else {
        return nil
    }
}

let multiple3 = multiple(number: 6)
let multiple5 = multiple(number: 10)
let multiple3e5 = multiple(number: 15)
let multiplenil = multiple(number: 26)

//--------------------------//-------------------------------------//---------------------------

func newAgeCalculate(currentAge: String) {
    guard let currentAge = Int(currentAge) else {
        return
    }
    let newAge = currentAge + 5
    print("Daqui 5 anos você terá \(newAge) anos.")
}

newAgeCalculate(currentAge: "vinte e sete")
newAgeCalculate(currentAge: "27")
 

// ---------------------------- ------------------------------------//-------------------

func purchase(item: String) -> Double? {
    let prices = ["Macarrão": 2.99, "Biscoito": 1.89, "Suco": 3.99, "Maçã": 0.50, "Banana": 0.25, "Brocolis": 0.99]
    let stock = ["Macarrão": 4, "Biscoito": 0, "Suco": 12, "Maçã": 6, "Banana": 6, "Brocolis": 3]
    var itemPrice = 0.0
    if let price = prices[item] {
        if let quantity = stock[item] {
            if quantity == 0 {
                return nil
            } else {
                itemPrice = price
            }
        }
    }
    return itemPrice
}

purchase(item: "Suco")
purchase(item: "Biscoito")
