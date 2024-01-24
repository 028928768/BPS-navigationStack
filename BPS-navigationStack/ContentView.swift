//
//  ContentView.swift
//  BPS-navigationStack
//
//  Created by Simon Siwell on 23/1/2567 BE.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var navigation: NavigationManager
    @EnvironmentObject var auth: AuthenticationManager
    var body: some View {
        VStack {
            switch auth.state {
            case .signedIn:
                LandingView()
            case .signedOut:
                VStack {
                    Text("signout-View")
                    Button("Log-in") {
                        withAnimation {
                            auth.signin()
                        }
                    }
                }
            }
          
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(NavigationManager())
        .environmentObject(AuthenticationManager())
}
