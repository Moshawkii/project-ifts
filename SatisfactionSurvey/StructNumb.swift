//
//  StructNumb.swift
//  SatisfactionSurvey
//
//  Created by Belinda Tagariello on 23/09/22.
//

import Foundation
import UIKit


enum Voti: Codable{
    case one, two, three, four, five, six, seven, eight, nine, ten
}

var dizionarioVoti: [Voti: Int] = [.one: 0, .two: 0, .three: 0, .four: 0, .five: 0, .six: 0, .seven: 0, .eight: 0, .nine: 0, .ten: 0]

func votato(voto: Voti) -> String{
    switch voto{
            
        case .one:
            return "1"
        case .two:
            return "2"
        case .three:
            return "3"
        case .four:
            return "4"
        case .five:
            return "5"
        case .six:
            return "6"
        case .seven:
            return "7"
        case .eight:
            return "8"
        case .nine:
            return "9"
        case .ten:
            return "10"
     
    }
}
