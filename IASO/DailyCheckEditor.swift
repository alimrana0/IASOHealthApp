//
//  DailyCheckEditor.swift
//  IASO
//
//  Created by MacMini on 1/4/22.
//

import SwiftUI

// Structure for selecting multiple options
struct MultipleSelectionRow: View {
    var title: String
    var isSelected: Bool
    var action: () -> Void

    var body: some View {
        Button(action: self.action) {
            HStack {
                Text(self.title)
                if self.isSelected {
                    Spacer()
                    Image(systemName: "checkmark")
                }
            }
        }
    }
}

// View for entering info in daily check
struct DailyCheckEditor: View {
    var dailyCheck: DailyCheckObject
    
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
            }
            .navigationTitle("Daily Check In")
        }
    }
}

struct DailyCheckEditor_Previews: PreviewProvider {
    static var previews: some View {
        DailyCheckEditor(dailyCheck: DailyCheckObject(text: "", rating: 0, curMood: []))
    }
}
