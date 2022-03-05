//
//  OnboardingView.swift
//  SwiftUI_Fruits (iOS)
//
//  Created by Seogun Kim on 2022/03/05.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: - PROPERTY
    var fruits: [Fruit] = fruitData
    
    //MARK: - BODY
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            }
        } //: TABVIEW
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

//MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitData)
    }
}
