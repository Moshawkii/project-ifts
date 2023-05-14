//
//  ViewController.swift
//  SatisfactionSurvey
//
//  Created by Belinda Tagariello on 21/09/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var votiNumbers: [BordButtonNumbers]!
    
    var numberVotato: Voti?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
    }


    
    @IBAction func numbers(_ sender: BordButtonNumbers) {
        
       // sender.isSelected = !sender.isSelected
        self.votiNumbers.forEach { $0.backgroundColor = ($0 == sender) ? UIColor.cyan : UIColor.white }

        switch sender.tag {
            case 0:
                numberVotato = .one
               
            case 1:
                numberVotato =  .two
               
            case 2:
                numberVotato = .three
                
            case 3:
                numberVotato = .four
                
            case 4:
                numberVotato = .five
               
            case 5:
                numberVotato = .six
                
            case 6:
                numberVotato = .seven
                
            case 7:
                numberVotato = .eight
                
            case 8:
                numberVotato = .nine
                
            case 9:
                numberVotato = .ten
                
            default:
                print("c'è un problema")
        }
    }
    
    @IBAction func conferma(_ sender: UIButton) {
        
        switch numberVotato{
               
            case .one:
                    dizionarioVoti[.one]! += 1
                    print(dizionarioVoti[.one]!)
            case .two:
                    dizionarioVoti[.two]! += 1
                    print(dizionarioVoti[.two]!)
            case .three:
                    dizionarioVoti[.three]! += 1
                    print(dizionarioVoti[.three]!)
            case .four:
                    dizionarioVoti[.four]! += 1
                    print(dizionarioVoti[.four]!)
            case .five:
                    dizionarioVoti[.five]! += 1
                    print(dizionarioVoti[.five]!)
            case .six:
                    dizionarioVoti[.six]! += 1
                    print(dizionarioVoti[.six]!)
            case .seven:
                    dizionarioVoti[.seven]! += 1
                    print(dizionarioVoti[.seven]!)
            case .eight:
                    dizionarioVoti[.eight]! += 1
                    print(dizionarioVoti[.eight]!)
            case .nine:
                    dizionarioVoti[.nine]! += 1
                    print(dizionarioVoti[.nine]!)
            case .ten:
                    dizionarioVoti[.ten]! += 1
                    print(dizionarioVoti[.ten]!)
            case .none:
                print("errore")
                
                
        }
       
        if let numbVot = numberVotato{
            let alert = UIAlertController(title: "Grazie per aver dato il tuo grado di soddisfazione", message:  votato(voto: numbVot), preferredStyle: .alert)
            
            let action = UIAlertAction(title: "Chiudi", style: .default) { al in
                self.votiNumbers.forEach { $0.backgroundColor = UIColor.white }
                self.numberVotato = nil
            }
            alert.addAction(action)
            self.present(alert, animated: true)
        }else{
            let alert = UIAlertController(title: "Seleziona un numero per esprimere il tuo giudizio.", message:  nil, preferredStyle: .alert)
            let action = UIAlertAction(title: "Ok", style: .cancel)
            alert.addAction(action)
            self.present(alert, animated: true)
        }
        
    }
}

