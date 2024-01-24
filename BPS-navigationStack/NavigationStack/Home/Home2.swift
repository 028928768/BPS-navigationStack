//
//  Home2.swift
//  BPS-navigationStack
//
//  Created by Simon Siwell on 23/1/2567 BE.
//

import SwiftUI

struct Home2: View {
    var body: some View {
        VStack {
            Text("Hello, Home2!")
            
            NavigationLink(value: HomeScreens.home3, label: {
                Text("Go home3")
            })
            
        } //: VStack
    }
}

#Preview {
    Home2()
}
