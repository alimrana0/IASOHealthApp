//
//  ProfileView.swift
//  IASO
//
//  Created by MacMini on 1/4/22.
//

import SwiftUI

struct ProfileView: View {
    @State var counter = 0
    
    var body: some View {
        Button("Counter: \(counter)") {
            counter += 1
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
