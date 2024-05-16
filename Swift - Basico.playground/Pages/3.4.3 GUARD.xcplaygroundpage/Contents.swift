import Foundation
import Darwin

var ab:String?
ab = "Valor opcional"

/// **ACCEDER A UN DATO EN UN AMBITO ENLACE**
/// **ANTI-IF**

//GUARD: El 'guard let' entra en su ambito SOLO cuando la condicion NO se cumpla.
guard let vab = ab else {
    throw NSError(domain: "Opcional vacia", code: 0, userInfo: nil)
}

// ⚠️ el cuerpo del 'guard' no puede pasar a través, considere usar 'return' o 'break' para salir del ambito.
// En estos caso lo que tenemos que hacer es poner un control de trasnferencia(3.3.6)


guard let vab = ab, vab.count > 0 else {  // si una de las condiciones es falsa, con el 'guard' entraria en el ambito y se ejecutaria ya que enlazamos 'vab' fuera de ella. - esto es parecido de un 'else' de un AND/&&.
    throw NSError(domain: "Opcional vacia", code: 0, userInfo: nil)
}
 print(vab)


/// **GUARD CON ENLACES CONCATENADOS**
var ac:Int?
var ae:String?
var ad:Double?

guard let ab = ab, let ac = ac, let ae = ae, let ad = ad, ad != 0 else {
    throw NSError(domain: "Opcionales vacias", code: 0, userInfo: nil)
}

print(ab, ac, ad, ae)
vab


