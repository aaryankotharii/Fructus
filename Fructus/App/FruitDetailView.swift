//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Aaryan Kothari on 12/09/20.
//

import SwiftUI

struct FruitDetailView: View {
    // MARK - PROPERTIES
    var fruit : Fruit
    
    // MARK - BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical){
                VStack(alignment: .center, spacing: 20){
                    // HEADER
                    VStack(alignment: .leading, spacing: 20) {
                        // TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        // NUTRIENTS
                        
                        
                        // SUBHEADLINE
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        // LINK
                        
                        
                    } //: VSTACK
                    .padding(.horizontal,20)
                    .frame(maxWidth: 640,alignment: .center)
                } //: VSTACK
            } //: SCROLL
        } //: NAVIGATION
    }
}

// MARK - PREVIEW
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit : fruitsData[1])
    }
}
