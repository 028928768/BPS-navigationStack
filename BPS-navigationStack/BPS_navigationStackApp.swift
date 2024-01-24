//
//  BPS_navigationStackApp.swift
//  BPS-navigationStack
//
//  Created by Simon Siwell on 23/1/2567 BE.
//

import SwiftUI

@main
struct BPS_navigationStackApp: App {
    @StateObject private var authentication: AuthenticationManager = .init()
    @StateObject private var navigation: NavigationManager = .init()
    var body: some Scene {
        WindowGroup {
            SplashView()
                .environmentObject(authentication)
                .environmentObject(navigation)
                .onOpenURL { url in
                    if navigation.checkDeepLink(url: url) {
                        print("got here from Deep link")
                    }else {
                        print("no deeplink found")
                    }
                }
        }
    }
}
