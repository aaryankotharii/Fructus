//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Aaryan Kothari on 13/09/20.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK - PROPERTIES
    var name : String
    var content : String? = nil
    var linklabel : String? = nil
    var linkDestination : String? = nil
    
    // MARK - BODY
    var body: some View {
        HStack{
            Text(name)
                .foregroundColor(.gray)
            Spacer()
            if (content != nil) {
                Text(content!)
            } else {
                Link(linklabel!, destination: URL(string: "https://\(linkDestination!)")!)
                Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
            }
        }
    }
}

// MARK - PREVIEW
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Developer", content: "OKAY")
                .previewLayout(.sizeThatFits)
                .padding()
            SettingsRowView(name: "Website", linklabel: "Aaryan", linkDestination: ".com")
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }
}
