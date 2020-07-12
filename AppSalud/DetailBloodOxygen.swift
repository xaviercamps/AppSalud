//
//  DetailBloodOxygen.swift
//  AppSalud
//
//  Created by Xavier Camps Novi on 12/07/2020.
//  Copyright © 2020 Xavier Camps Novi. All rights reserved.
//

import SwiftUI

struct DetailBloodOxygen: View {
    
    let patient: PatientModel
    
    var body: some View {
        VStack {
            Text("Oxigen en Sangre")
                .font(.title)
                .padding(.top, 20)
            HStack {
                ForEach(patient.bloodoxygen, id:\.self) { oxygen in
                    Bar(minValue: nil, minColor: nil, maxValue: nil, maxColor: nil, value: oxygen, valueColor: Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                        .padding(5)
                }
            }
            HStack {
                VStack {
                    Text("Capacidad")
                    .bold()
                    Text("(%)")
                    .bold()
                    Text("*Valores comprendidos en los últimos 15 días desde fecha de hoy \(Date().fullDate).")
                        .font(.footnote)
                    Text("**El primer valor es el más antiguo.")
                    .font(.footnote)
                }
                .padding(.horizontal, 20)
                
            }
            .padding(.horizontal, 20)
            List {
                ForEach(patient.bloodoxygen, id:\.self) { oxygen in
                    HStack {
                        Spacer()
                        Text("\(oxygen)")
                        Text("%")
                        Spacer()
                    }
                    
                }
            }
        }
    }
}
struct DetailBloodOxygen_Previews: PreviewProvider {
    static var previews: some View {
        DetailBloodOxygen(patient: PatientsData().patients[0])
    }
}
