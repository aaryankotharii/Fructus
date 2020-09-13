//
//  ContentView.swift
//  Fructus
//
//  Created by Aaryan Kothari on 12/09/20.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @State private var isShowingSettings : Bool = false
    var fruits : [Fruit] = fruitsData
    
    // MARK - BODY
    var body: some View {
        NavigationView {
            List{
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink(
                        destination: FruitDetailView(fruit: fruit)){
                            FruitRowView(fruit: fruit)
                                .padding(.vertical,4)
                        } //: NAVIGATION LINK
                    }
            } //: LIST
            .navigationTitle("FRUITS")
            .navigationBarItems(trailing: topButton)
            .sheet(isPresented: $isShowingSettings){
                SettingsView()
            }
        } //: NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }
    
    var topButton : some View{
        Button(action: {
            self.isShowingSettings = true
        }, label: {
            Image(systemName: "slider.horizontal.3")
        })
    } //: TOP-BUTTON
}

// MARK - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
