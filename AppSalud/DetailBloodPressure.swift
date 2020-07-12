//
//  DetailBloodPressure.swift
//  AppSalud
//
//  Created by Xavier Camps Novi on 12/07/2020.
//  Copyright © 2020 Xavier Camps Novi. All rights reserved.
//

import SwiftUI

struct DetailBloodPressure: View {
    
    let patient: PatientModel
    
    var body: some View {
        VStack {
            Text("Presión arterial")
                .font(.title)
                .padding(.top, 20)
            HStack {
                ForEach(patient.bloodpressure, id:\.self) { pressure in
                    Bar(minValue: pressure.minima, minColor: Color(#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)), maxValue: pressure.maxima, maxColor: Color(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)), value: nil, valueColor: nil)
                        .padding(5)
                }
            }
            HStack {
                Text("Fecha")
                    .bold()
                    .padding(.leading, 35)
                Spacer()
                VStack {
                    Text("Sistólica")
                    .bold()
                    Text("(mm Hg)")
                    .bold()
                }
                .padding(.horizontal, 20)
                VStack(alignment: .center) {
                    Text("Diastólica")
                    .bold()
                    Text("(mm Hg)")
                    .bold()

                }
            }
            .padding(.horizontal, 20)
            List {
                ForEach(patient.bloodpressure, id:\.self) { pressure in
                    HStack {
                        Text("\(pressure.date)")
                        Spacer()
                        
                        Text("\(pressure.maxima)")
                        
                        Spacer()
                        
                        Text("\(pressure.minima)")
                    
                    }
                    .padding(.horizontal, 20)
                }
            }
        }
    }
}

struct DetailBloodPressure_Previews: PreviewProvider {
    static var previews: some View {
        DetailBloodPressure(patient: PatientsData().patients[0])
    }
}
