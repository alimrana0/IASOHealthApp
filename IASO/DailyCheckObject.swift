//
//  DailyCheckObject.swift
//  IASO
//
//  Created by MacMini on 1/11/22.
//

import Foundation

// Daily Check object which will be taken and stored
class DailyCheckObject : Codable {
    var text: String
    var rating: Int
    var curMood: Array<String>
    
    init(text: String, rating: Int, curMood: Array<String>) {
        self.text = text
        self.rating = rating
        self.curMood = curMood
    }
    
    func editText(newText: String) {
        self.text = newText
    }
    
    func editRating(newRating: Int) {
        self.rating = newRating
    }
    
    func editCurMood(newCurMood: Array<String>) {
        self.curMood = newCurMood
    }
}
