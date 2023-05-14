//
//  ButtonClass.swift
//  SatisfactionSurvey
//
//  Created by Belinda Tagariello on 21/09/22.
//

import Foundation
import UIKit

@IBDesignable


class BordButtonNumbers: UIButton{

    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setUp()
       
    }
    
    func setUp(){
        layer.cornerRadius = 10
        layer.borderWidth = 2
        layer.borderColor = UIColor.cyan.cgColor
        //layer.borderColor = UIColor(red: 9, green: 191, blue: 216, alpha: 1).cgColor
       
        //layer.backgroundColor = CGColor(red: 9, green: 191, blue: 216, alpha: 1)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.widthAnchor.constraint(equalToConstant: 50).isActive = true
        self.heightAnchor.constraint(equalToConstant: 50).isActive = true
        layer.backgroundColor = UIColor.white.cgColor
    }
    
    
    
 
    
    
    
}
