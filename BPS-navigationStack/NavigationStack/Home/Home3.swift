//
//  Home3.swift
//  BPS-navigationStack
//
//  Created by Simon Siwell on 23/1/2567 BE.
//

import SwiftUI

struct Home3: View {
    @EnvironmentObject var navigationManager: NavigationManager
    var body: some View {
        VStack {
            Text("Hello, Home3!")
            
            NavigationLink(value: HomeScreens.home1, label: {
                Text("Go home1")
            })
            
            Button(action: {
                // clear pathHome stack
                navigationManager.pathHome = .init()
            }, label: {
                Text("Home")
            })
            
            
        }
    }
}

#Preview {
    Home3()
        .environmentObject(NavigationManager())
}
