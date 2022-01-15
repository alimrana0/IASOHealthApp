//
//  DetailedEntryView.swift
//  IASO
//
//  Created by MacMini on 1/13/22.
//

import SwiftUI

// Detailed view for each Daily Check within ProfileView
struct DetailedEntryView: View {
    let dailyCheck: DailyCheckEntity
    
    var body: some View {
            Form {
                Section(header: Text("How you were...")) {
                    Text(dailyCheck.text!)
                }
                Section(header: Text("Overall mood rating...")) {
                    Text(String(dailyCheck.rating))
                }
                Section(header: Text("Overall mood...")) {
                    ForEach(dailyCheck.curMood!, id: \.self) { mood in
                        Text(mood)
                    }
                }
            }
            .edgesIgnoringSafeArea(.top)
            .navigationBarTitle("Entry: " + dateFormat(date: dailyCheck.date!))
    }
    
    // Function to convert date to string
    func dateFormat(date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM d, y"
        return dateFormatter.string(from: date)
    }
}

/*
struct DetailedEntryView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedEntryView()
    }
}
*/
