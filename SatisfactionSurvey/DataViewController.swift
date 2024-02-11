//
//  DataViewController.swift
//  SatisfactionSurvey
//

import UIKit

class DataViewController: UIViewController {

    @IBOutlet var dataTable: UITableView!
    
    @IBOutlet var shareBt: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        shareBt.isHidden = true
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func backBtn(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func deleteBtn(_ sender: Any) {
        
        let alert = UIAlertController(title: "Confermi che vuoi eliminare tutti i voti", message:  nil, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Elimina", style: .default) { al in
            deleteAll()
            self.dismiss(animated: true)
        }
        alert.addAction(action)
        self.present(alert, animated: true)
       
    }
    
    @IBAction func shareBtn(_ sender: Any) {
        
    }
    
}

extension DataViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = dataTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! DataTableViewCell
      
        let sortedKeysAndValues = dizionarioVoti.sorted(by: { Int(votato(voto: $0.key))! < Int(votato(voto: $1.key))! })
        let keys = [String](sortedKeysAndValues.map({ votato(voto: $0.key) }))
        let values = [Int](sortedKeysAndValues.map({ $0.value }))
        cell.posizioneVoto.text = "Voto \(keys[indexPath.row])"
        cell.votoNumero.text = "\(values[indexPath.row])"
        return cell
    
    }
    
    
}

