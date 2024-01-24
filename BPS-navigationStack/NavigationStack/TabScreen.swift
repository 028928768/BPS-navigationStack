//
//  TabScreen.swift
//  BPS-navigationStack
//
//  Created by Simon Siwell on 23/1/2567 BE.
//

import SwiftUI

struct TabScreen: View {
    //enum for Tabs, add other tabs if needed
    enum Tab {
      case screenA, screenB
     }
    @State private var selectedTab: Tab = .screenA
    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeScreen()
                .tabItem {
                    Label("Home", systemImage: "house.circle.fill")
                }.tag(Tab.screenA)
            

            ProfileScreen()
                .tabItem {
                    Label("Profile", systemImage: "person.circle.fill")
                }.tag(Tab.screenB)
        } //: TabView
    }
}

#Preview {
    TabScreen()
}
