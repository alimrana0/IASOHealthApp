//
//  FeaturedView.swift
//  IASO
//
//  Created by MacMini on 1/4/22.
//

import SwiftUI

// View for only featured user content
struct FeaturedView: View {
    @State var name = ""
    
    var body: some View {
        NavigationView {
            List {
                Text("article 1")
                Text("article 2")
                Text("article 3")
            }
            .navigationTitle("Featured...")
        }
    }
}

struct FeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedView()
    }
}
