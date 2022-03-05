//
//  OnboardingView.swift
//  SwiftUI_Fruits (iOS)
//
//  Created by Seogun Kim on 2022/03/05.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: - PROPERTY
    
    //MARK: - BODY
    var body: some View {
        TabView {
            ForEach(0..<5) { item in
//                FruitCardView()
                Text("Cards")
            }
        } //: TABVIEW
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

//MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
