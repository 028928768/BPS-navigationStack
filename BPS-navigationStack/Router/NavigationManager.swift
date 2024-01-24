//
//  NavigationManager.swift
//  BPS-navigationStack
//
//  Created by Simon Siwell on 23/1/2567 BE.
//

import Foundation

import SwiftUI

class NavigationManager: ObservableObject {
    @Published var pathHome = NavigationPath() // declare navigationPath as it could support any type of path; String, Int, etc
    @Published var pathProfile = NavigationPath()
    @Published var landingViewContinueWith: LandingViewContinueWith = .root
}

extension NavigationManager {
    enum LandingViewContinueWith {
        case root, red, blue, main
    }
    

}

// use enum for home screen as type of navigation Path for readability
enum HomeScreens {
    case home1, home2, home3
}
