//
//  FeaturedView.swift
//  IASO
//
//  Created by MacMini on 1/4/22.
//

import SwiftUI

struct FeaturedView: View {
    @State var name = ""
    
    var body: some View {
        TextField(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/, text: $name)
    }
}

struct FeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedView()
    }
}
