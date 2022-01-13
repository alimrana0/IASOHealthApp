//
//  DailyCheck.swift
//  IASO
//
//  Created by MacMini on 1/3/22.
//

import SwiftUI

// View when starting up app to prompt daily check
struct DailyCheckView: View {
    @State private var swap = false
    
    var body: some View {
        if !swap {
            VStack {
                DailyCheckEditor(dataM: DataManager(), dailyCheck: DailyCheckObject(text: "", rating: 0, curMood: []))
                Button("Skip Daily Wellness...") {
                        swap = true
                }
            }
        }
        else {
            MainView()
        }
    }
}

struct DailyCheck_Previews: PreviewProvider {
    static var previews: some View {
        DailyCheckView()
    }
}
