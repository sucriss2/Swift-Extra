import UIKit

var greeting = "Hello, playground"

struct Quadro {
    
    var valor = 0
    
}

var name = "Maria"
var name2 : String = " "
let string = String("asdfs")
let idade = Int(10)

var quadro = Quadro()
quadro.valor = 90
dump(quadro)

var quadro2 = quadro
dump(quadro2)

quadro.valor = 38
dump(quadro)
dump(quadro2)

/*func alteraquadro (q: Quadro) {
    q.valor += 10
    
}
 alteraquadro(q: quadro)
print("+++++++++++")
dump(quadro)
dump(quadro2)
 */



var movel = String("estante")
var movel2 = movel
movel2 = "cabide"

print(movel)
print(movel2)

var valor : Int = 23
