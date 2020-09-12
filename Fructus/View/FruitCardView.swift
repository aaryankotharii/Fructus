//
//  FruitCardView.swift
//  Fructus
//
//  Created by Aaryan Kothari on 12/09/20.
//

import SwiftUI

struct FruitCardView: View {
    //MARK - PROPERTIES
    var fruit : Fruit
    @State private var isAnimating : Bool = false
    
    //MARK - Body
    var body: some View {
        ZStack{
        VStack(spacing: 10) {
            // FRUIT: IMAGE
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color.black.opacity(0.16), radius: 8, x: 6, y: 8)
                .scaleEffect(isAnimating ? 1.0 : 0.6)
            
            // FRUIT : TITlE
            Text(fruit.title)
                .foregroundColor(.white)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .shadow(color: Color.black.opacity(0.15), radius: 2, x: 2, y: 2)

             // FRUIT : HEADLINE
            Text(fruit.headline)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding(.horizontal,16)
                .frame(maxWidth:480)
            
            // BUTTON : START
            StartButtonView()
            
        } //: VSTACK
    } //: ZSTACK
        .onAppear(perform: animateView)
        .frame(minWidth: .zero, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal,20)
    }
    
    func animateView(){
        withAnimation(.easeOut(duration: 0.5)) {
            isAnimating = true
        }
    }
}

//MARK - Preview
struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[0])
    }
}
