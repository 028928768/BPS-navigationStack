//
//  RedScreen.swift
//  BPS-navigationStack
//
//  Created by Simon Siwell on 23/1/2567 BE.
//

import SwiftUI

struct RedScreen: View {
    @EnvironmentObject var navigator: NavigationManager
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    // MARK: Custom back button

                    Button(action: {
                        withAnimation {
                            navigator.landingViewContinueWith = .root
                        }
                    }, label: {
                        HStack {
                            Image(systemName: "chevron.left")
                            Text("Back")
                        }
                        .foregroundStyle(.blue)
                    })
                    .padding()

                    Spacer()
                }
                Spacer()
            }

            VStack {
                HStack {
                    Text("Hello, Red Screen!")
                    Image(systemName: "r.circle.fill")
                        .foregroundStyle(.red)
                }

                Button(action: {
                    // go to blue screen
                    withAnimation {
                        navigator.landingViewContinueWith = .blue
                    }
                }, label: {
                    Text("Go Blue screen")
                })
                .padding()

                Button(action: {
                    withAnimation {
                        navigator.landingViewContinueWith = .main
                    }
                }, label: {
                    Text("START")
                })
            } //: VStack
        }
    }
}

#Preview {
    RedScreen()
        .environmentObject(NavigationManager())
}
