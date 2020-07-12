//
//  Bar.swift
//  AppSalud
//
//  Created by Xavier Camps Novi on 12/07/2020.
//  Copyright © 2020 Xavier Camps Novi. All rights reserved.
//

import SwiftUI

struct Bar: View {
    
    let minValue: Int?
    let minColor: Color?
    
    let maxValue: Int?
    let maxColor: Color?
    
    let value: Int?
    let valueColor: Color?
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 5)
                .frame(width: 10, height: CGFloat(maxValue ?? 0))
                .foregroundColor(maxColor ?? Color.white)
            VStack {
                Spacer()
                RoundedRectangle(cornerRadius: 5)
                    .frame(width: 10, height: CGFloat(minValue ?? 0))
                    .foregroundColor(minColor ?? Color.white)
            }
            VStack {
                Spacer()
                RoundedRectangle(cornerRadius: 5)
                    .frame(width: 10, height: CGFloat(value ?? 0))
                    .foregroundColor(valueColor ?? Color.white)
            }
        }
        .frame(width: 5, height: 130)
    }
}

struct Bar_Previews: PreviewProvider {
    static var previews: some View {
        Bar(minValue: 100, minColor: Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)), maxValue: 50, maxColor: Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)), value: nil, valueColor: nil)
    }
}
