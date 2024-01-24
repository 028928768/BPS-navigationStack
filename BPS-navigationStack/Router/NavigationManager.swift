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
    
    func checkDeepLink(url: URL)->Bool {
         guard let deepLinkComponent = URLComponents(url: url, resolvingAgainstBaseURL: true)?.host   else {
             return false
         }
         print(deepLinkComponent)
         if deepLinkComponent == "home1" {
             pathHome.append(HomeScreens.home1)
         } else if deepLinkComponent == "home2"  {
             pathHome.append(HomeScreens.home2)
         } else if deepLinkComponent == "home3" {
             pathHome.append(HomeScreens.home3)
         } else {
            // check further deep linking depending on your setup here...
         }
         return true
     }

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

//enum for Tabs, add other tabs if needed
enum Tab {
  case home, profile
 }
