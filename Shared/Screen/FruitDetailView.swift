//
//  FruitDetailView.swift
//  SwiftUI_Fruits (iOS)
//
//  Created by Seogun Kim on 2022/03/06.
//

import SwiftUI

struct FruitDetailView: View {
    //MARK: - PROPERTY
    var fruit: Fruit
    //MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                     FruitHeaderView(fruit: fruit)
                   //MARK: - HEADER
                    VStack(alignment: .leading, spacing: 20) {
                        
                        //MARK: - TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        //MARK: - HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        //MARK: - NUTRIENTS
                        FruitNutrientsView(fruit: fruit)
                        
                        //MARK: - SUBHEADLINE
                        Text("\(fruit.title)에 대해 자세히 알아보기")
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //MARK: - DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        //MARK: - LINK
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                        
                    } //:VSTACK
                    .padding(.horizontal)
                    //아이패드에서의 width을 고려해서 maxWidth을 640으로 제한
                    .frame(maxWidth: 640, alignment: .center)
                } //:VSTACK
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            } //:SCROLLVIEW
            .edgesIgnoringSafeArea(.top)
        }//:NAVIGATIONVIEW
            
    }
}

//MARK: - PREVIEW
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitData[0])
    }
}
