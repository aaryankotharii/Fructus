//
//  ContentView.swift
//  Fructus
//
//  Created by Aaryan Kothari on 12/09/20.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    var fruits : [Fruit] = fruitsData
    
    // MARK - BODY
    var body: some View {
        NavigationView {
            List{
                ForEach(fruits.shuffled()) { fruit in
                    FruitRowView(fruit: fruit)
                        .padding(.vertical,4)
                }
            } //: LIST
            .navigationTitle("FRUITS")
    } //: NAVIGATION
    }
}

// MARK - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
