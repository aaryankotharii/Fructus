//
//  FruitModel.swift
//  Fructus
//
//  Created by Aaryan Kothari on 12/09/20.
//

import SwiftUI

// MARK: - FRUITS DATA MODEL

struct Fruit : Identifiable  {
    var id = UUID()
    var title : String
    var headline : String
    var image : String
    var gradientColors : [Color]
    var description : String
    var nutrition : [String]
    
    func linearGradient(start:UnitPoint = .top, end:UnitPoint = .bottom) -> LinearGradient {
        return LinearGradient(gradient: Gradient(colors: self.gradientColors), startPoint: .top, endPoint: .bottom)
    }
}


