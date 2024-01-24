//
//  BScreen.swift
//  BPS-navigationStack
//
//  Created by Simon Siwell on 23/1/2567 BE.
//

import SwiftUI

struct ProfileScreen: View {
    @EnvironmentObject var navigationManager: NavigationManager
    var body: some View {
        NavigationStack {
            VStack {
                Text("Hello, Profile!")
                Image(systemName: "person.circle.fill")
                    .foregroundStyle(.blue)
                
                NavigationLink(destination: Profile1()) {
                    Text("Go Profile1")
                }.simultaneousGesture(TapGesture().onEnded{
                    // call api here...
                    print("call APi")
                })
                
                Button(action: {
                    withAnimation {
                        navigationManager.landingViewContinueWith = .root
                    }
                }, label: {
                    Text("Back to Root/Home")
                })
            } //: VStack
        } //: NavigationStack
    }
}

#Preview {
    ProfileScreen()
        .environmentObject(NavigationManager())
}
