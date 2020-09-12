//
//  StartButtonView.swift
//  Fructus
//
//  Created by Aaryan Kothari on 12/09/20.
//

import SwiftUI

struct StartButtonView: View {
    //MARK - PROPERTIES
    @AppStorage("isOnboarding") var isOnboarding : Bool?
    
    //MARK - BODY
    var body: some View {
        Button(action: startClicked, label: {
            HStack(spacing: 8){
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16.0)
            .padding(.vertical, 10.0)
            .foregroundColor(.white)
            .background(Capsule().strokeBorder(Color.white, lineWidth: 1.25))

        }) //: BUTTON
    }
    
    func startClicked(){
        isOnboarding = false
    }
}

//MARK - PREVIEW
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
        .previewLayout(.sizeThatFits)
    }
}
