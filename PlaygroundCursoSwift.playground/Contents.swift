//: Playground - noun: a place where people can play

import UIKit

// String
// ***************************************************************************************
var frase = "Contenido de la frase"

// Número de carácteres
frase.characters.count

print("El número de carácteres es \(frase.characters.count)")


// Puedo definir clases en la carperta Sources del playground
Metodos.retornaCadena()

// Como es una cadena lo que retorna el método
// obtengo el  carácter de la primera posición
Metodos.retornaCadena()[Metodos.retornaCadena().startIndex]
//
for index in Metodos.retornaCadena().characters.indices {
    print("\(Metodos.retornaCadena()[index]) ", terminator: "")
}


// Insertar un carácter
var exclamacion = "Una Exclamación"
exclamacion.insert("!", atIndex: exclamacion.endIndex)


// Insertar una cadena en una posición
exclamacion.insertContentsOf(" al final".characters, at: exclamacion.endIndex.predecessor())

// Elimina el último carácter
exclamacion.removeAtIndex(exclamacion.endIndex.predecessor())
// Este es el contenido
print("\(exclamacion)")

// Se eliminan los últimos nueve carácteres
let range = exclamacion.endIndex.advancedBy(-9)..<exclamacion.endIndex
exclamacion.removeRange(range)

// Comparando cadenas
let cadenauno = "A ver si son iguales."
let cadenados = "A ver si son iguales."
if cadenauno == cadenados {
    print("Estas dos cadenas son iguales")
}

// prefijos y sufijos
// PREFIJOS
let semana = [
    "Dia 1 jueves",
    "Dia 2 viernes",
    "Dia 3 sábado"
]

// Voy a contar las cadenas que comienzan por el texto "Dia"
var frasesConInicioDia = 0
for elemento in semana {
    if elemento.hasPrefix("Dia") {
        ++frasesConInicioDia
    }
}
print("Hay \(frasesConInicioDia) frases que empiezan con la palabra Dia.")


// SUFIJOS
// voy a contar las cadenas que acaban en jueves y viernes
var jueves = 0
var viernes = 0
for elemento in semana {
    if elemento.hasSuffix("jueves") {
        ++jueves
    } else if elemento.hasSuffix("viernes") {
        ++viernes
    }
}
print("\(jueves) cuantos jueves; \(viernes) cuantos viernes")


// Números
// ***************************************************************************************
// pueden tener diferentes formatos para una mejor lectura
let unDouble = 000345.231
let unMillonQuinientos = 1_500_000

// Int sin signo
let enteroSinSigno: UInt8 = 1

// Valor máximo de un tipo Int8
let valorMaximo: Int8 = Int8.max

// Convertir de un tipo a otro
let dosMil: UInt16 = 2_000
let uno: UInt8 = 1
let dosMilUno = dosMil + UInt16(uno)

// Suma de tipo int a double
let tres = 3
let valorTipoDouble = 0.14159
let pi = Double(tres) + valorTipoDouble

// Paso a Int y queda con valor 3
let integerPi = Int(pi)


// Tuples
// ***************************************************************************************
// Tuples agrupan múltiples valores en un valor compuesto

let articulo = (100, "Botella de Agua")

let (codigo, descripcion) = articulo
print("El codigo del artículo es  \(codigo)")
print("La descripción del artículo es \(descripcion)")


let (soloCodigo, _) = articulo
print("El codigo del artículo es  \(soloCodigo)")

// Se puede acceder por el código
print("El código del artículo es \(articulo.0)")
print("La descripción del artículo es \(articulo.1)")

let articuloLeche = (codigoIni: 200, descripcionIni: "Caja de Leche")

print("Se ha inicializado el código \(articuloLeche.codigoIni)")
print("Se ha inicializado la descripción \(articuloLeche.descripcionIni)")







