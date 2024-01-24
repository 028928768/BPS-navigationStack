//
//  Home1.swift
//  BPS-navigationStack
//
//  Created by Simon Siwell on 23/1/2567 BE.
//

import SwiftUI

struct Home1: View {
    var body: some View {
        VStack {
            Text("Hello, Home1!")
            
            NavigationLink(value: HomeScreens.home2, label: {
                Text("Go home2")
            })
            
        } //: VStack
    }
}

#Preview {
    Home1()
}
