//
//  ContentView.swift
//  IASO
//
//  Created by MacMini on 1/3/22.
//

import SwiftUI

// View for all content for user
struct ContentView: View {
    
    var body: some View {
        NavigationView {
            List {
                Text("article 1")
                Text("article 2")
                Text("article 3")
            }
            .navigationTitle("Explore Content")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
