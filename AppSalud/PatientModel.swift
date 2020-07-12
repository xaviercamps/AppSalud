//
//  PatientModel.swift
//  AppSalud
//
//  Created by Xavier Camps Novi on 11/07/2020.
//  Copyright © 2020 Xavier Camps Novi. All rights reserved.
//

import Foundation

struct PatientModel: Codable, Identifiable {
    let id: Int
    let name, firstname, secondname: String
    let age: Int
    let bloodpressure: [Bloodpressure]
    let bloodoxygen, heartrate: [Int]
}

// MARK: - Bloodpressure
struct Bloodpressure: Codable, Hashable {
    let id = UUID()
    let date: String
    let maxima, minima: Int
}

final class PatientsData: ObservableObject {
    
    @Published var patients: [PatientModel]
    
    init() {
        guard let ruta = Bundle.main.url(forResource: "patients", withExtension: "json") else {
            self.patients = []
            return
        }
        do {
            let data = try Data(contentsOf: ruta)
            self.patients = try JSONDecoder().decode([PatientModel].self, from: data)
            print("Carga de datos correcta")
        } catch {
            print("No se ha podido cargar la lista de pacientes. Error: \(error)")
            self.patients = []
        }
    }
}
