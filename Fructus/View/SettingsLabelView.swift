//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Aaryan Kothari on 13/09/20.
//

import SwiftUI

struct SettingsLabelView: View {
    // MARK - PROPERTIES
    var labelText : String
    var labelImage : String
    
    // MARK - BODY
    var body: some View {
        HStack{
            Text(labelText.uppercased()).bold()
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "FRUCTUS", labelImage: "arrow.circle")
    }
}
