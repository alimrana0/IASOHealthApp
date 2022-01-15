//
//  DailyCheckEditor.swift
//  IASO
//
//  Created by MacMini on 1/4/22.
//

import SwiftUI

/*
Might be able to fully delete
*/


// View for entering info in daily check
struct DailyCheckEditor: View {
    let dataM: DataManager
    
    @State private var text: String = ""
    @State private var rating: Int = 0
    @State private var curMood: Array<String> = []
    
    let moods =  ["Happy", "Sad", "Angry"]
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("How are you?")) {
                    TextEditor(text: $text)
                }
                Section(header: Text("Rate Mood")) {
                    Picker("Current Mood", selection: $rating) {
                        ForEach(0..<11) {
                            Text("\($0)")
                        }
                    }
                }
                Section(header: Text("Current Emotions")) {
                    ForEach(self.moods, id: \.self) { item in
                        MultipleSelectionRow(title: item, isSelected: self.curMood.contains(item)) {
                            if self.curMood.contains(item) {
                                self.curMood.removeAll(where: { $0 == item })
                            }
                            else {
                                self.curMood.append(item)
                            }
                        }
                    }
                }
                Button("Submit") {
                    dataM.save(date: Date(), text: text, rating: rating, curMood: curMood)
                }
                Button("Reset") {
                    dataM.resetData()
                }
            }
            .navigationTitle("Daily Check In")
        }
    }
}

struct DailyCheckEditor_Previews: PreviewProvider {
    static var previews: some View {
        DailyCheckEditor(dataM: DataManager())
    }
}
