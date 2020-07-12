//
//  PatientsList.swift
//  AppSalud
//
//  Created by Xavier Camps Novi on 11/07/2020.
//  Copyright © 2020 Xavier Camps Novi. All rights reserved.
//

import SwiftUI

struct PatientsList: View {
    
    @EnvironmentObject var patients: PatientsData
    @Binding var showView: Bool
    
    var body: some View {
        NavigationView {
            List {
                ForEach(self.patients.patients) { patient in
                    NavigationLink(destination:
                        PatientDetail(patient: patient)
                    ) {
                        VStack(alignment: .leading) {
                            Text("\(patient.name) \(patient.firstname) \(patient.secondname)")
                            .font(.headline)
                        }
                    }
                }
            }
            .navigationBarTitle("Listado de pacientes")
            .navigationBarItems(trailing:
                Button(action: { self.showView.toggle() }) {
                    Image(systemName: "multiply.circle")
                        .resizable()
                        .frame(width: 25, height: 25)
                }
            )
        }
        .offset(y: self.showView ? 0 : screenHeigth)
        .animation(.default)
    }
}


struct PatientsList_Previews: PreviewProvider {
    static var previews: some View {
        PatientsList(showView: .constant(true)).environmentObject(PatientsData())
    }
}


