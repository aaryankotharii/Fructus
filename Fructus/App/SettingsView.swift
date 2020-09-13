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
                    // MARK - SECTION 1
                    
                    GroupBox(
                        label:
                        SettingsLabelView(labelText: "fructus", labelImage: "info.circle")){
                        Divider().padding(.vertical,4)
                        HStack(alignment: .center, spacing: 10){
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                        Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                            .font(.footnote)
                            
                        }
                    }
                    
                    // MARK - SECTION 2
                    
                    // MARK - SECTION 3
                    GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")){
                        SettingsRowView(name: "Developer", content: "Aaryan Kothari")
                        SettingsRowView(name: "Compatibility", content: "iOS 14")
                        SettingsRowView(name: "Github", linklabel: "@aaryankotharii",linkDestination: "github.com/aaryankotharii")
                        SettingsRowView(name: "Linkedin", linklabel: "@aaryankotharii",linkDestination: "www.linkedin.com/in/aaryankotharii/")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                    }   
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
    } //: CROSS-BUTTON
}


//MARK - PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
