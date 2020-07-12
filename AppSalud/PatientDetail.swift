//
//  PatientDetail.swift
//  AppSalud
//
//  Created by Xavier Camps Novi on 11/07/2020.
//  Copyright © 2020 Xavier Camps Novi. All rights reserved.
//

import SwiftUI

struct PatientDetail: View {
    
    let patient: PatientModel
    @State var showPressureSheet = false
    @State var showOxygenSheet = false
    @State var showHeartrateSheet = false
    
    var body: some View {
        VStack {
            TopDetailView(patient: patient)
            
            Text("Datos médicos")
                .font(.largeTitle).bold()
                .padding(.top, 20)
            ScrollView {
                HStack(alignment: .center) {
                    HStack {
                        Image(systemName: "heart.fill")
                            .foregroundColor(Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)))
                            .padding()
                        Text("Presión anterial")
                    }
                    Spacer()
                    VStack {
                        Text("\(Int(patient.bloodpressure.last?.maxima ?? 0))")
                        Bar(minValue: patient.bloodpressure.last?.minima, minColor: Color(#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)), maxValue: patient.bloodpressure.last?.maxima, maxColor: Color(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)), value: nil, valueColor: nil)
                        Text("\(Int(patient.bloodpressure.last?.minima ?? 0))")
                    }
                    Spacer()
                    Button(action: { self.showPressureSheet.toggle() }) {
                        Image(systemName: "chevron.right")
                        .padding(20)
                    }
                    .sheet(isPresented: $showPressureSheet) {
                        DetailBloodPressure(patient: self.patient)
                    }
                }
                .padding()
                Divider()
                HStack(alignment: .center) {
                    HStack {
                        Image(systemName: "wind")
                        .foregroundColor(Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)))
                        .padding()

                        Text("Oxigen en sangre")
                    }
                    Spacer()
                    VStack {
                        Bar(minValue: nil, minColor: nil, maxValue: nil, maxColor: nil, value: patient.bloodoxygen.last ?? 0, valueColor: Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)))
                        Text("\(Int(patient.bloodoxygen.last ?? 0))")
                    }
                    Spacer()
                    Button(action: {  self.showOxygenSheet.toggle()  }) {
                        Image(systemName: "chevron.right")
                        .padding(20)
                    }
                    .sheet(isPresented: $showOxygenSheet) {
                        DetailBloodOxygen(patient: self.patient)
                    }
                }
                .padding()
                Divider()
                HStack(alignment: .center) {
                    HStack {
                        Image(systemName: "waveform.path.ecg")
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)))
                            .padding(25)
                        Text("Ritmo cardícaco")
                    }
                    Spacer()
                    VStack {
                        Bar(minValue: nil, minColor:nil, maxValue: nil, maxColor: nil, value: patient.heartrate.last ?? 0, valueColor: Color(#colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)))
                        Text("\(Int(patient.heartrate.last ?? 0))")
                    }
                    Spacer()
                    Button(action: { self.showHeartrateSheet.toggle() }) {
                        Image(systemName: "chevron.right")
                        .padding(40)
                    }
                    .sheet(isPresented: $showHeartrateSheet) {
                        DetailHeartRate(patient: self.patient)
                    }
                }
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct PatientDetail_Previews: PreviewProvider {
    static var previews: some View {
        PatientDetail(patient: PatientsData().patients[0])
    }
}
