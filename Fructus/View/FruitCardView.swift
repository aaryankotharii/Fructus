//
//  FruitCardView.swift
//  Fructus
//
//  Created by Aaryan Kothari on 12/09/20.
//

import SwiftUI

struct FruitCardView: View {
    
    
    //MARK - Body
    var body: some View {
        ZStack{
        VStack(spacing: 10) {
            // FRUIT: IMAGE
            Image("blueberry")
                .resizable()
                .scaledToFit()
                .shadow(color: Color.black.opacity(0.16), radius: 8, x: 6, y: 8)
            
            // FRUIT : TITlE
            Text("Blueberry")
                .foregroundColor(.white)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .shadow(color: Color.black.opacity(0.15), radius: 2, x: 2, y: 2)

             // FRUIT : HEADLINE
            Text("Blueberries are sweet, nutritious and wildly popular fruit all over the world.")
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding(.horizontal,16)
                .frame(maxWidth:480)
            
            // BUTTON : START
            
            
        } //: VSTACK
    }
        .frame(minWidth: .zero, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: [Color("ColorBlueberryLight"), Color("ColorBlueberryDark")]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
    }
}

//MARK - Preview
struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView()
    }
}
