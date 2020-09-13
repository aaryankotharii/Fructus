//
//  SettingsView.swift
//  Fructus
//
//  Created by Aaryan Kothari on 13/09/20.
//

import SwiftUI

struct SettingsView: View {
    // MARK - PROPERTIES
    @Environment(\.presentationMode) var presentztionMode
    
    // MARK - BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20){
                    Text("Hello, World!")
                } //: VSTACK
                .navigationBarTitle(Text("Settings"),displayMode: .large)
                .navigationBarItems(trailing: crossButton)
                .padding()
            } //: SCROLL
        } //: NAVIGATION
    }
    
    var crossButton : some View {
        Button(action: {
            presentztionMode.wrappedValue.dismiss()
        }, label: {
            Image(systemName: "xmark")
        })
    }
}


//MARK - PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
