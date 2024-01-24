//
//  AScreen.swift
//  BPS-navigationStack
//
//  Created by Simon Siwell on 23/1/2567 BE.
//

import SwiftUI

struct HomeScreen: View {
    @EnvironmentObject var navigationManager: NavigationManager
    var body: some View {
        NavigationStack(path: $navigationManager.pathHome) {
            VStack {
                Text("Hello, Home!")
                Image(systemName: "house.circle.fill")
                    .foregroundStyle(.yellow)
            
                NavigationLink(value: HomeScreens.home1, label: {
                    Text("Go home1")
                }).simultaneousGesture(TapGesture().onEnded{
                    // call api here...
                    print("call APi")
                })
                
                
            } //: VStack
            .navigationDestination(for: HomeScreens.self, destination: { screen in
                switch screen {
                case .home1:
                    Home1()
                case .home2:
                    Home2()
                case .home3:
                    Home3()
                }
            })
        } //: NavigationStack
    }
}

#Preview {
    HomeScreen()
        .environmentObject(NavigationManager())
}
