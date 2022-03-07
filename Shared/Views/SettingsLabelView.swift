//
//  SettingsLabelView.swift
//  SwiftUI_Fruits (iOS)
//
//  Created by Seogun Kim on 2022/03/07.
//

import SwiftUI

struct SettingsLabelView: View {
    //MARK: - PROPERTY
    var labelText: String
    var iconName: String
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: iconName)
        }
    }
}
//MARK: - PREVIEW
struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fruits", iconName: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
