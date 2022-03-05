//
//  ContentView.swift
//  Shared
//
//  Created by Seogun Kim on 2022/03/05.
//

import SwiftUI

struct ContentView: View {
    var fruits: [Fruit] = fruitData
    var body: some View {
        
        NavigationView {
            List {
                //요소 랜덤 효과 .shuffled()
                ForEach(fruits.shuffled()) { item in
                    FruitRowView(fruit: item)
                        .padding(.vertical, 5)
                }
            }
            .navigationTitle("과일")
        } //: NAVIGATION
        .navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitData)
    }
}
