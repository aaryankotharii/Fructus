//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Aaryan Kothari on 12/09/20.
//

import SwiftUI

struct FruitHeaderView: View {
    // MARK - PROPERTIES
    
    var fruit : Fruit
    
    // MARK - BODY
    var body: some View {
        ZStack{
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
    }
}

// MARK - PREVIEW
struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[1])
    }
}
