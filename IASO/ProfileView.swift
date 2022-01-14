//
//  ProfileView.swift
//  IASO
//
//  Created by MacMini on 1/4/22.
//

import SwiftUI

// View for the profile tab
struct ProfileView: View {
    let dataM: DataManager
    
    var body: some View {
        NavigationView {
            List {
                ForEach(dataM.loadAll().reversed(), id: \.self) { dailyCheck in
                    NavigationLink(destination: DetailedEntryView(dailyCheck: dailyCheck)) {
                        ProfileDailyView(dailyCheck: dailyCheck)
                    }
                }
            }
            .navigationTitle("Profile")
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(dataM: DataManager())
    }
}
