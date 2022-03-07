//
//  SettingsView.swift
//  SwiftUI_Fruits (iOS)
//
//  Created by Seogun Kim on 2022/03/07.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - PROPERY
    @Environment(\.presentationMode) var presentationMode
    
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    //MARK: - SECTION 1
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Fruits", iconName: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(8)
                            
                            Text("대부분의 과일은 지방과 나트륨 그리고 칼로리가 낮다. 과일에는 우리 몸에 필요한 비타민, 무기질, 섬유소 등의 영양소뿐 아니라 건강에 도움을 주는 생리활성기능이 뛰어난 식물성 화학물질 ‘파이토케미컬’이 들었다. 건강을 위해 이런 색깔의 채소와 과일을 골고루 섭취하는 게 좋다.")
                                .font(.footnote)
                        }
                    }
                    //MARK: - SECTION 2
                    
                    //MARK: - SECTION 3
                    
                }//:VSTACK
            }//:SCROLLVIEW
            .navigationBarTitle(Text("설정"), displayMode: .large)
            .navigationBarItems(
                trailing:
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "xmark")
                    }
            )
            .padding()
        }//:NAVIGATIONVIEW
    }
}

//MARK: - PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
