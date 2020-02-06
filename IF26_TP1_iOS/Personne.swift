//
//  Personne.swift
//  
//
//  Created by lucas noga on 14/11/2017.
//

import Foundation

class Personne {
    var nom: String
    var prenom: String
    var age: Int
    
    func description(){
        print("Nom : " + self.nom + ", prenom : " + self.prenom)
    }
}

init() {
    self.nom = "Dupont"
    self.prenom = "Jean"
    self.age = 20
}

init(nom: String, prenom: String, age: Int){
    self.nom = nom
    self.prenom = prenom
    self.age = age
}

func isAldult() -> Bool {
    return age>18
}

let p1 = Personne("Simoni", "Valentin", 47)
print(p1)
