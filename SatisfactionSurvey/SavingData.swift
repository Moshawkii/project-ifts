//
//  SavingData.swift
//  SatisfactionSurvey
//

import Foundation
import UIKit

func save(saved: [Voti: Int]){
    
    let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first
    var archiveUrl = documentsDirectory?.appendingPathComponent("Votis")
    archiveUrl!.appendPathExtension("plist")
    
    let propertyListEncoder = PropertyListEncoder()
    let encodedNote = try? propertyListEncoder.encode(saved)
    
    try? encodedNote?.write(to: archiveUrl!, options: .noFileProtection)

}


func retrieve() -> [Voti: Int]?{
    
    let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first
    var archiveUrl = documentsDirectory?.appendingPathComponent("Votis")
    archiveUrl!.appendPathExtension("plist")
    let propertyDecoder = PropertyListDecoder()
    
    if let retrievedVoti = try? Data(contentsOf: archiveUrl!), let decodedVotes = try? propertyDecoder.decode([Voti:Int].self, from: retrievedVoti){
        print(decodedVotes)
    return decodedVotes
    }
    else{
        return nil
    }
}

func deleteAll(){
    let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first
    var archiveUrl = documentsDirectory?.appendingPathComponent("Votis")
    archiveUrl!.appendPathExtension("plist")
//    if FileManager.default.fileExists(atPath: "Votis.plist") {
//        // delete file
//        do {
   try?  FileManager.default.removeItem(atPath: archiveUrl!.path)
dizionarioVoti = [.one: 0, .two: 0, .three: 0, .four: 0, .five: 0, .six: 0, .seven: 0, .eight: 0, .nine: 0, .ten: 0]
//        } catch {
//            print("Could not delete file, probably read-only filesystem")
//        }
    
}
