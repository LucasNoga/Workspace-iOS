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
        return self.age>18
    }
}

let p1 = Personne(nom: "Simoni", prenom: "Valentin", age: 47)
p1.description()

class Etudiant : Personne{
    var nocarte: Int
    
    override func description(){
        super.description()
    }
    
    init(nom: String, prenom: String, age: Int, nocarte: Int) {
        self.nocarte = nocarte
        super.init(nom: nom, prenom: prenom, age: age)
    }
}
//;
protocol UTT {
    func juryResultat() -> String
    func GPA() -> Int
}

class Doctorant : Etudiant, UTT{
    func juryResultat() -> String {
        return "YO"
    }
    
    func GPA() -> Int {
        return 13
    }
}
