//
//  DataTableViewCell.swift
//  SatisfactionSurvey
//

import UIKit

class DataTableViewCell: UITableViewCell {

    @IBOutlet var posizioneVoto: UILabel!

    @IBOutlet var votoNumero: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
