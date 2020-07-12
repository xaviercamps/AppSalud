//
//  DetailHeartRate.swift
//  AppSalud
//
//  Created by Xavier Camps Novi on 12/07/2020.
//  Copyright © 2020 Xavier Camps Novi. All rights reserved.
//

import SwiftUI

struct DetailHeartRate: View {
    let patient: PatientModel
    
    var body: some View {
        VStack {
            Text("Ritmo cardíaco")
                .font(.title)
                .padding(.top, 20)
            HStack {
                ForEach(patient.heartrate, id:\.self) { heart in
                    Bar(minValue: nil, minColor: nil, maxValue: nil, maxColor: nil, value: heart, valueColor: Color(#colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)))
                        .padding(5)
                }
            }
            HStack {
                VStack {
                    Text("Pulsaciones")
                    .bold()
                    Text("(ppm)")
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
                ForEach(patient.heartrate, id:\.self) { heart in
                    HStack {
                        Spacer()
                        Text("\(heart)")
                        Spacer()
                    }
                    
                }
            }
        }
    }
}

struct DetailHeartRate_Previews: PreviewProvider {
    static var previews: some View {
        DetailHeartRate(patient: PatientsData().patients[0])
    }
}
