//
//  CardMenuItem.swift
//  AppSalud
//
//  Created by Xavier Camps Novi on 11/07/2020.
//  Copyright © 2020 Xavier Camps Novi. All rights reserved.
//

import SwiftUI

struct CardMenuItem: View {
    
    let image: String
    let title: String
    let firstBackgroundColor: Color
    let secondBackgroundColor: Color
    let tag: Int
    
    @Binding var showAlert: Bool
    @Binding var showView: Bool
    
    var body: some View {
        VStack {
            Image(systemName: "\(image)")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.white)
                .frame(width: 60, height: 60)
            Text(title)
                .font(.title).bold()
                .foregroundColor(.black)
        }
        .onTapGesture {
            if self.tag != 0 {
                self.showAlert.toggle()
            } else {
                self.showView.toggle()
            }
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Atención"),
                  message: Text("Opción no disponible temporalmente.\nDisculpe las molestias"),
                  dismissButton: .default(Text("Aceptar")))
        }
        .frame(width: screenWidth/1.5, height: screenHeigth/5)
        .background(LinearGradient(gradient: Gradient(colors: [firstBackgroundColor, secondBackgroundColor]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(25)
        .shadow(color: Color.black.opacity(0.5), radius: 25, x: 0, y: 10)
        .padding()
    }
}


struct CardMenuItem_Previews: PreviewProvider {
    static var previews: some View {
        CardMenuItem(image: "bandage", title: "Atención primaria", firstBackgroundColor: Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)), secondBackgroundColor: Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)), tag: 0, showAlert: .constant(true), showView: .constant(false))
    }
}
