//
//  ViewController.swift
//  First App Openclassrooms
//
//  Created by lucas noga on 09/12/2017.
//

import UIKit

class Exercice: UIViewController {
    
    @IBOutlet var tfNombreEntre : UITextField!
    var modeAuto : Bool!
    @IBOutlet var bFin : UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func alert(_ title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "Ok", style: UIAlertActionStyle.cancel, handler: nil)
        alert.addAction(ok)
        self.present(alert, animated: true, completion: nil)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            self.view.endEditing(true)
    }
    
    @IBAction func clicSurFin(sender : UIButton) {
        //On vérifie que le texte entré par l'utilisateur n'est pas nil
        let resultat = tfNombreEntre.text;
            
            //On regarde si le résultat est 8
        if Int(resultat!)! == 8 {
                alert("Bravo", message: "4 + 4 = 8\nC'est une bonne réponse")
                
        } else {
                alert("Faux", message: "Ce n'est pas la bonne réponse, réessayez !")
        }
    }

    @IBAction func autoOnOff (sender : UISwitch) {
        modeAuto = sender.isOn   //On attribue à modeAuto la valeur du UISwitch
        bFin.isHidden = modeAuto  //Cache la vue
    }
    
    @IBAction func texteModifie (sender : UITextField) {
        if modeAuto {
            //On vérifie que le texte entré par l'utilisateur n'est pas nil
            if let resultat = sender.text{
                //On regarde si le résultat est 8
                if Int(resultat) == 8 {
                    alert("Bravo", message: "4 + 4 = 8\nC'est une bonne réponse")
                }
            }
        }
    }
}

