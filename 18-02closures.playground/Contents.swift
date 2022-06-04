import UIKit
import Darwin

var greeting = "Hello, playground"


//
func getPair(numbers:[Int], divisible: Int) -> [Int] {
    var numberPair: [Int] = []
    for number in numbers{
        if number % divisible == 0 {
            numberPair.append(number)
        }
    }
    return numberPair
}
getPair(numbers: [2,3,9,6,8,4,1,12,31,53,76,82,2,10], divisible: 3)


//getPair(numbers: [2,3,9,6,8,4,1,31,53,76,82,2,10])
//print(getPair(numbers: [2,3,9,6,8,4,1,31,53,76,82,2,10]))

func getDivide(numbers: [Int], div1: Int, div2: Int, other: Bool) -> [Int] {
    var newNumbers: [Int] = []
    
    if other == true {
        for number in numbers {
            if number % div1 == 0 || number % div2 == 0 {
            newNumbers.append(number)
        }
     }
    } else if other == false {
        for number in numbers {
            if number % div1 == 0 && number % div2 == 0 {
            newNumbers.append(number)
        }
    }
    }
    return newNumbers
}

getDivide(numbers: [2,3,9,6,8,4,1,12,31,53,76,82,2,10], div1: 3, div2: 4, other: false)


func getDivideOther(numbers: [Int], div1: Int, div2: Int) -> [Int] {
    var newNumbers:[Int] = []
    
    for number in numbers {
        if number % div1 == 0 || number % div2 == 0 {
            newNumbers.append(number)
        }
    }
    return newNumbers
}

getDivideOther(numbers: [2,3,9,6,8,4,1,12,31,53,76,82,2,10], div1: 3, div2: 4)

func getDivideboth(numbers: [Int], div1: Int, div2: Int) -> [Int] {
    var newNumbers:[Int] = []
    
    for number in numbers {
        if number % div1 == 0 && number % div2 == 0 {
            newNumbers.append(number)
        }
    }
    return newNumbers
}

getDivideboth(numbers: [2,3,9,6,8,4,1,12,31,53,76,82,2,10], div1: 3, div2: 4)

enum DivideType {
    case both
    case some
}

func getDivideFodao(numbers:[Int], div1:Int, div2:Int, type: DivideType) -> [Int] {
    switch type {
    case .both:
        return getDivideboth(numbers: numbers, div1: div1, div2: div2)
    case .some:
        return getDivideOther(numbers: numbers, div1: div1, div2: div2)
    }
}

getDivideFodao(numbers: [1,2,3,4,5,6], div1: 3, div2: 5, type: .both)




func filtter(numbers:[Int], algorithm: (Int) -> Bool) -> [Int] {
    var numberPair: [Int] = []
    
    for number in numbers{
        if algorithm(number) {
            numberPair.append(number)
        }
    }
    return numberPair
}

filtter(numbers: [2,4,6,7,9,12,56]) { value in
    value % 2 == 0
}

filtter(numbers: [1,2,3,4,5,6], algorithm: { number in
    return number % 2 == 0
})


[1,2,3,4,5].filter { number in
    return number % 2 == 0
}

var arr: [Int] = []

for n in 60...2000 {
    arr.append(n)
}

let result = filtter(numbers: arr, algorithm: { number in
    return String(number).contains("00")
})

print(result)

