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
    @State private var isAnimatingTopImage : Bool = false
    
    // MARK - BODY
    var body: some View {
        ZStack{
            fruit.linearGradient(start: .topLeading, end: .bottomTrailing)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color.black.opacity(0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical,20)
                .scaleEffect(isAnimatingTopImage ? 1.0 : 0.6)
        } //: ZSTACK
        .frame(height: 440)
        .onAppear(perform: animateImage)
    }
    
    func animateImage(){
        withAnimation(.easeOut(duration: 0.5)) {
            isAnimatingTopImage = true
        }
    }
}

// MARK - PREVIEW
struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[1])
    }
}
