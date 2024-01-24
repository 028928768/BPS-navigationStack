//
//  LandingView.swift
//  BPS-navigationStack
//
//  Created by Simon Siwell on 23/1/2567 BE.
//

import SwiftUI

struct LandingView: View {
    @EnvironmentObject var navigationManager: NavigationManager
    var body: some View {
        VStack {
            switch navigationManager.landingViewContinueWith {
            case .root:
                content
            case .red:
                RedScreen()
                    .transition(.move(edge: .trailing))
            case .blue:
                BlueScreen()
                    .transition(.move(edge: .trailing))
            case .main:
                TabScreen()
            }

        }//: VStack
    }
}

extension LandingView {
    var content: some View {
        VStack {
            Text("Hello, LandingView!")
            
            Button("Next") {
                withAnimation {
                    navigationManager.landingViewContinueWith = .red
                }
            }
        }
    }
}

#Preview {
    LandingView()
        .environmentObject(NavigationManager())
}
