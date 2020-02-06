//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

enum Resultat : Int {
    case A = 18
    case B = 11
    case C = 13
    case D = 14
}

class Module{
    var sigle: String
    var categorie: String
    var credit: Int
    var resultat: Resultat
    
    init() {
        self.sigle = "SigleDefaut"
        self.categorie = "TM"
        self.credit = 6
        self.resultat = Resultat.A
    }
    
    init(sigle:String, categorie:String, credit:Int, resultat:Resultat) {
        self.sigle = sigle
        self.categorie = categorie
        self.credit = credit
        self.resultat = resultat
    }
    
    func description(){
        print("Sigle : " + self.sigle + ", categorie : " + self.categorie)
    }
}

let m1 = Module(sigle:"IF26", categorie:"TM", credit:6, resultat:Resultat.B)
m1.description()


class Cursus{
    var profil = [Module]()
    
    init() {
        profil = [
            Module(sigle:"IF26", categorie:"TM", credit:6, resultat:Resultat.B),
            Module(sigle:"IF07", categorie:"CS", credit:6, resultat:Resultat.A),
            Module(sigle:"RE04", categorie:"CS", credit:6, resultat:Resultat.C),
            Module(sigle:"LO07", categorie:"TM", credit:6, resultat:Resultat.D),
        ]
    }
    
    func ajoute(m:Module){
        profil += [m]
    }
    
    func getSigles() -> [String]{
        var tab = [String]()
        for module in profil {
            tab.append(module.sigle)
        }
        return tab
    }
   
    func getModule(p:Int) -> Module {
        return profil[p]
    }
}

var monCursus = Cursus()
monCursus.getSigles()
monCursus.getModule(p:2).description()
