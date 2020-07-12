//
//  TopDetailView.swift
//  AppSalud
//
//  Created by Xavier Camps Novi on 12/07/2020.
//  Copyright © 2020 Xavier Camps Novi. All rights reserved.
//

import SwiftUI

struct TopDetailView: View {
    
    let patient: PatientModel
    
    var body: some View {
        VStack {
            Spacer()
            Text("Datos del paciente")
                .font(.largeTitle).bold()
            HStack {
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .background(Color(#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)))
                    .clipShape(Circle())
                    .background(Circle().stroke(Color(#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)),lineWidth: 5))
                    .padding()
                VStack(alignment: .leading) {
                    HStack {
                        Text("Nombre:")
                            .font(.body).bold()
                        Text("\(patient.name)")
                            .font(.body)
                    }
                    HStack {
                        Text("Apellidos:")
                            .font(.body).bold()
                        Text("\(patient.firstname) \(patient.secondname)")
                            .font(.body)
                            .multilineTextAlignment(.center)
                    }
                    HStack {
                        Text("Edad:")
                            .font(.body).bold()
                        Text("\(patient.age)")
                            .font(.body)
                    }
                }
            }
        }
        .frame(width: screenWidth, height: screenHeigth/3)
        .padding(.bottom, 30)
        .background(Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)))
        .cornerRadius(25)
        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)), radius: 25, x: 5, y: 5)
    }
}


struct TopDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopDetailView(patient: PatientsData().patients[0])
    }
}
