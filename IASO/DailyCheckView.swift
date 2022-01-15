//
//  DailyCheck.swift
//  IASO
//
//  Created by MacMini on 1/3/22.
//

import SwiftUI

// View when starting up app to prompt daily check
struct DailyCheckView: View {
    @StateObject private var viewModel = ViewModel()
    
    var body: some View {
        if !viewModel.swap {
            VStack {
                NavigationView {
                    Form {
                        Section(header: Text("How are you?")) {
                            TextEditor(text: $viewModel.text)
                        }
                        Section(header: Text("Rate Mood")) {
                            Picker("Current Mood", selection: $viewModel.rating) {
                                ForEach(0..<11) {
                                    Text("\($0)")
                                }
                            }
                        }
                        Section(header: Text("Current Emotions")) {
                            ForEach(viewModel.moods, id: \.self) { item in
                                MultipleSelectionRow(title: item, isSelected: viewModel.curMood.contains(item)) {
                                    if viewModel.curMood.contains(item) {
                                        viewModel.curMood.removeAll(where: { $0 == item })
                                    }
                                    else {
                                        viewModel.curMood.append(item)
                                    }
                                }
                            }
                        }
                        Button("Submit") {
                            viewModel.save()
                        }
                        Button("Reset (Testing Only)") {
                            viewModel.dataM.resetData()
                        }
                    }
                    .navigationTitle("Daily Check In")
                }
                Button("Skip Daily Check...") {
                    viewModel.swap = true
                }
            }
        }
        else {
            MainView()
        }
    }
}

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

struct DailyCheck_Previews: PreviewProvider {
    static var previews: some View {
        DailyCheckView()
    }
}
