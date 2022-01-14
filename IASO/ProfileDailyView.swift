//
//  ProfileDailyView.swift
//  IASO
//
//  Created by MacMini on 1/13/22.
//

import Foundation
import SwiftUI

// View for each seperate Daily Check
struct ProfileDailyView: View {
    let dailyCheck: DailyCheckEntity
    
    var body: some View {

        Text("Entry: " + dateFormat(date: dailyCheck.date!) + ", Rating: " + String(dailyCheck.rating))
    }
    
    // Function to convert date to string
    func dateFormat(date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        return dateFormatter.string(from: date)
    }
}
/*
struct ProfileDailyView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileDailyView()
    }
} */
