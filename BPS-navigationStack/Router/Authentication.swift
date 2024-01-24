//
//  Authentication.swift
//  BPS-navigationStack
//
//  Created by Simon Siwell on 23/1/2567 BE.
//

import Foundation

class AuthenticationManager: ObservableObject {
    enum AuthState {
        case signedIn
        case signedOut
    }
    
    
    // MARK: - Properties
    @Published var state: AuthState = .signedOut
    
    func signin() {
        state = .signedIn
    }
    
    func signout() {
        state = .signedOut
    }
}
