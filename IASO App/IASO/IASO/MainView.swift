//
//  MainView.swift
//  IASO
//
//  Created by MacMini on 1/3/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            ContentView()
            DailyCheck()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
