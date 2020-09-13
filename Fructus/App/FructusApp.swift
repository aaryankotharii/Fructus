//
//  FructusApp.swift
//  Fructus
//
//  Created by Aaryan Kothari on 12/09/20.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding : Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                OnboardingView()
            } else{
                ContentView()
            }
        }
    }
}
