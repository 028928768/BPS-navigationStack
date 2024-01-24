//
//  SplashView.swift
//  BPS-navigationStack
//
//  Created by Simon Siwell on 23/1/2567 BE.
//

import SwiftUI

struct SplashView: View {
    @State var isActive: Bool = false
    @State private var isRotating = 0.0
    var body: some View {
        ZStack {
            if self.isActive {
                ContentView()
            } else {
                Rectangle()
                    .background(.black)

                    Image("dota2-logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 300)
                    
                VStack {
                    Spacer()
                    Image(systemName: "gear")
                        .foregroundStyle(.white)
                        .font(.system(size: 64))
                        .rotationEffect(.degrees(isRotating))
                        .padding(.bottom, 100)
                        .onAppear {
                            withAnimation(.linear(duration: 1)
                                .speed(0.1).repeatForever(autoreverses: false)) {
                                    isRotating = 360.0
                                }
                        }
                    
                }
                
            }
            
        } //: ZStack
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5, execute: {
                withAnimation {
                    self.isActive = true
                }
            })
        }
    }
}

#Preview {
    SplashView()
}
