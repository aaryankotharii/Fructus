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
        Text("Hello, World!")
    }
}

// MARK - PREVIEW
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit : fruitsData[1])
    }
}
