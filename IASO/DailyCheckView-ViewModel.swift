//
//  DailyCheckView-ViewModel.swift
//  IASO
//
//  Created by MacMini on 1/14/22.
//

import Foundation
import MapKit

// Model to handle Daily Check
extension DailyCheckView {
     class ViewModel: ObservableObject {
        @Published var swap = false
        
        @Published var text: String = ""
        @Published var rating: Int = 0
        @Published var curMood: Array<String> = []
        
        let moods =  ["Happy", "Sad", "Angry"]
        
        let dataM = DataManager()
        
        // Saves info in Daily Check
        func save() {
            dataM.save(date: Date(), text: text, rating: rating, curMood: curMood)
            swap = true
        }
    }
}
