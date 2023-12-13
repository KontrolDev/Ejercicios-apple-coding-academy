import Foundation
import CoreGraphics

let cadena = "A long time ago in a galaxy far far away"
let cadena2 = "One ring to rule them all"

//let subcadena = cadena[3...5] 👈 no se puede hacer asi, por que un caracter puede ocupar dos posiciones el siguiente solo una etc etc, que 'long' usaria 3 posiciones y 'time' 4 y nos iguales y tiene un valor `String.Index`


// STRING.INDEX
let inicio = cadena.startIndex   // `.startIndex`seria la primera posicion del primer caracter de una cadena no vacia
let final = cadena.endIndex  // si una cadena tuviera 20 posiciones - `.endIndex` seria la posicion 21


// ACCEDIENDO A SUBCADENA POR RANGO DE INDICES DE CADENAS
let posicion1 = cadena.index(cadena.startIndex, offsetBy: 7)  // Empieza desde la Posicion 7 de la cadena de rango desde el principio.
let posicion2 = cadena.index(cadena.startIndex, offsetBy: 14) // Empieza desde la Posicion 14 de la cadena de rangodesde el final.

cadena[posicion1...posicion2] // Me muestra la posicion 7 a la 14 ➡️
cadena2[posicion1...posicion2]

// Vigilar de optener un indice superior al que tenemos, la App se cerrara.

let posicion3 = cadena2.index(cadena2.endIndex, offsetBy: -5)  //Al estar en la ultima posicipn de cadena se le resta 5 para entrar en el ranog de subcadenas.
let subCadena = cadena2[posicion1..<posicion3]   // Rango parcial de cadenas.

let cadenaFinal = String(subCadena)  // Contructor del tipo String

cadena[...cadena.index(cadena.endIndex, offsetBy: -10)]  //Se pone -10 por que contamos desde al final a menos 10 con cadena de caracteres.
cadena[cadena.index(cadena.startIndex, offsetBy: 10)...] //Cadena que me lleva desde la posicion 10 hasta el final.
cadena[...cadena.index(cadena.startIndex, offsetBy: 15)]  //Cadena que empieza desde el comiendo hasta la posicion 15.





// INDICE DE PRINCIPIO Y FIN

// TIPO SUBSTRING
// RANGO DE UN SOLO LADO PARA LAS CADENAS
