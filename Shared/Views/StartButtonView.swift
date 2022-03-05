//
//  StartButtonView.swift
//  SwiftUI_Fruits (iOS)
//
//  Created by Seogun Kim on 2022/03/05.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: - PROPERY
    
    //MARK: - BODY
    var body: some View {
        Button(action: {
            print("OnboardingView로 이동")
        }) {
            HStack(spacing: 10) {
                Text("시작하기")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.2)
            )
        }//:BUTTON
        .accentColor(.white)
        
    }
}

//MARK: - PREVIEW
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            
    }
}
