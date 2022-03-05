//
//  FruitCardView.swift
//  SwiftUI_Fruits (iOS)
//
//  Created by Seogun Kim on 2022/03/05.
//

import SwiftUI

struct FruitCardView: View {
    //MARK: - PROPERTY
    var fruit: Fruit
    @State private var isAnimating: Bool = false
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // FRUIT IMAGE
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .scaleEffect(isAnimating ? 1 : 0.5)
                    .shadow(color: .black .opacity(0.5), radius: 8, x: 6, y: 8)
                    
                // FRUIT TITLE
                Text(fruit.title)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .shadow(color: Color.black .opacity(0.3), radius: 8, x: 2, y: 2)
                
                // FRUIT HEADLINE
                Text(fruit.headline)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .padding(.horizontal, 10)
                // BUTTON START
                StartButtonView()
                
            }//:VSTACK
        }//:ZSTACK
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
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
        FruitCardView(fruit: fruitData[11])
            .previewLayout(.fixed(width: 360, height: 680))
    }
}
