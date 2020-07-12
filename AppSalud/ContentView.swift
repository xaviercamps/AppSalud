//
//  ContentView.swift
//  AppSalud
//
//  Created by Xavier Camps Novi on 11/07/2020.
//  Copyright © 2020 Xavier Camps Novi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var showAlert = false
    @State var showView = false
    
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                Text("App Salud")
                    .font(.largeTitle).bold()
                Spacer()
                CardMenuItem(image: "bandage", title: "Atención primaria", firstBackgroundColor: Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)), secondBackgroundColor: Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)), tag: 0, showAlert: $showAlert, showView: $showView)
                CardMenuItem(image: "staroflife", title: "Urgencias", firstBackgroundColor: Color(#colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)), secondBackgroundColor: Color(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)), tag: 1, showAlert: $showAlert, showView: $showView)
                CardMenuItem(image: "doc.plaintext", title: "Informes", firstBackgroundColor: Color(#colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)), secondBackgroundColor: Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)), tag: 2, showAlert: $showAlert, showView: $showView)
            }
            PatientsList(showView: $showView)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(PatientsData())
    }
}
