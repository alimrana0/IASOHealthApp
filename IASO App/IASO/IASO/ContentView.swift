//
//  ContentView.swift
//  IASO
//
//  Created by MacMini on 1/3/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
            Text("Hello").tabItem { Text("Explore")
            }.tag(1)
            Text("Daily Check").tabItem {
                Text("Daily Check")
            }.tag(2)
            Text("Profile").tabItem { Text("Profile")
            }.tag(3)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
