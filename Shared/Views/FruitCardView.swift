//
//  FruitCardView.swift
//  SwiftUI_Fruits (iOS)
//
//  Created by Seogun Kim on 2022/03/05.
//

import SwiftUI

struct FruitCardView: View {
    //MARK: - PROPERTY
    @State private var isAnimating: Bool = false
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // FRUIT IMAGE
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .scaleEffect(isAnimating ? 1 : 0.5)
                    
                // FRUIT TITLE
                Text("블루베리")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .shadow(color: Color.black .opacity(0.3), radius: 8, x: 2, y: 2)
                
                // FRUIT HEADLINE
                Text("블루베리는 파란색 또는 보라색 열매가 있는 다년생 꽃 식물로 널리 분포되어 있습니다")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .padding(.horizontal, 10)
                // BUTTON START
                StartButtonView()
                
            }//:VSTACK
        }//:ZSTACK
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(LinearGradient(gradient: Gradient(colors: [Color("ColorBlueberryLight"), Color("ColorBlueberryDark")]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(10)
        .padding(.horizontal, 10)
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        })
    }
}

//MARK: - PREVIEW
struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView()
            .previewLayout(.fixed(width: 360, height: 680))
    }
}
