//
//  SwiftUI_FruitsApp.swift
//  Shared
//
//  Created by Seogun Kim on 2022/03/05.
//

import SwiftUI

@main
struct SwiftUI_FruitsApp: App {
    @AppStorage("OnboardingView") var isOnboardingActive: Bool = true
    
    var body: some Scene {
        WindowGroup {
            
            if isOnboardingActive {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
