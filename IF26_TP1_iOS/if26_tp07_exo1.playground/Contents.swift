//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var x = 2
/* La différence est la portée. var est limité au bloc de fonction le plus proche et est limité au bloc englobant le plus proche, qui peut être plus petit qu'un bloc fonctionnel. Les deux sont globaux si hors de tout bloc.
 */

/*
 Integer : un entier.
 Float : un nombre flottant.
 Double : un nombre rationnel avec plus de précision qu’un Float.
 Bool : un booléen.
 String : une chaine de caractère.
 */

var prix:Double = 12.56

print(prix)

print("prix =",prix)

var nom = "Noga"
var prenom = "Lucas"

var nomPrenom = nom + " " + prenom
print(nomPrenom)

func echo1(variable:String){
    print(variable)
}

echo1(variable: nomPrenom)

func echo2(variable:String){
    print(variable.characters.count);
}

echo2(variable: nomPrenom)

let sigle = ["NF16", "LO02", "IF03"]

print(sigle[1])

var sigle2: [String: String]
sigle2 = ["IF07": "Module1", "NF16": "Module2"]
////////////////Afficher avec les clés

typealias Point = [Int:Int]
let point1: Point = [4:6]
let point2: Point = [10:0]

/*
 func fpoint(point1:Point, point2:Point) -> Point {
 if point1[0] >= 23 {
 return point1
 } else {
 return point2
 }
 }
 */
