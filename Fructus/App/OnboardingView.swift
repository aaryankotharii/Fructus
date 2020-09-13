//
//  OnboardingView.swift
//  Fructus
//
//  Created by Aaryan Kothari on 12/09/20.
//

import SwiftUI

struct OnboardingView: View {
    //MARK - PROPERTIES
    var fruit : [Fruit] = fruitsData
    //MARK - BODY
    var body: some View {
        TabView {
            ForEach(fruit) { fruit in
                FruitCardView(fruit: fruit)
            } //: LOOP
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
    }
}

//MARK - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
