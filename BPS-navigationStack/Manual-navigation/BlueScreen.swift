//
//  BlueScreen.swift
//  BPS-navigationStack
//
//  Created by Simon Siwell on 23/1/2567 BE.
//

import SwiftUI

struct BlueScreen: View {
    @EnvironmentObject var navigator: NavigationManager
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    // MARK: Custom back button
                    Button(action: {
                        withAnimation {
                            navigator.landingViewContinueWith = .red
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
                    Text("Hello, Blue Screen!")
                    
                    Image(systemName: "b.circle.fill")
                        .foregroundStyle(.blue)
                    
                }
                

            }
        }
        
    }
}

#Preview {
    BlueScreen()
        .environmentObject(NavigationManager())
}
