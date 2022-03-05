//
//  FruitNutrientsView.swift
//  SwiftUI_Fruits (iOS)
//
//  Created by Seogun Kim on 2022/03/06.
//

import SwiftUI

struct FruitNutrientsView: View {
    //MARK: - PROPERTY
    var fruit: Fruit
    //FruitData의 nutrients와 동일한 배열로 나열해야 함
    let nutrients: [String] = ["칼로리", "당류", "지방", "단백질", "비타민", "무기질"]
    //MARK: - BODY
    var body: some View {
        GroupBox() {
            DisclosureGroup("100g 당 영양 성분") {
                ForEach(0 ..< nutrients.count, id: \.self) {
                    item in
                    
                    Divider().padding(.vertical, 2)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body))
                        
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    } //:HSTACK
                } //:FOREACH
            } //: DISCLOUSUREGROUP
        }//:GROUPBOX
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 8))
    }
}

//MARK: - PREVIEW
struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
