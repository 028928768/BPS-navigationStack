//
//  TabScreen.swift
//  BPS-navigationStack
//
//  Created by Simon Siwell on 23/1/2567 BE.
//

import SwiftUI

struct TabScreen: View {
    @State private var selectedTab: Tab = .home
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeScreen()
                .tabItem {
                    Label("Home", systemImage: "house.circle.fill")
                }.tag(Tab.home)
            

            ProfileScreen()
                .tabItem {
                    Label("Profile", systemImage: "person.circle.fill")
                }.tag(Tab.profile)
        } //: TabView
    }
}

#Preview {
    TabScreen()
}
