//
//  ContentView.swift
//  Shared
//
//  Created by Seogun Kim on 2022/03/05.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTY
    var fruits: [Fruit] = fruitData
    
    @State private var isShowingSetting: Bool = false
    
    //MARK: - BODY
    var body: some View {
        
        NavigationView {
            List {
                //요소 랜덤 효과 .shuffled()
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 5)
                    }
                }
            }
            .navigationTitle("과일")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSetting = true
                    }) {
                        Image(systemName: "list.dash")
                    }//:BUTTON
                    .sheet(isPresented: $isShowingSetting, content: {
                        SettingsView()
                    })
            )
        } //: NAVIGATION
        .navigationViewStyle(.stack)
    }
}
//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitData)
    }
}
