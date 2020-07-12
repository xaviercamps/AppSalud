//
//  Settings.swift
//  AppSalud
//
//  Created by Xavier Camps Novi on 12/07/2020.
//  Copyright © 2020 Xavier Camps Novi. All rights reserved.
//

import SwiftUI

struct Settings: View {
    var body: some View {
        VStack {
            Text("Ajutes")
                .font(.largeTitle).bold()
                .padding(.top, 15)
            Form {
                Section(header: Text("Features incluidas")) {
                    Text("✅ Estructura principal de la app.")
                    Text("✅ Alertas en opciones no activadas.")
                    Text("✅ Presentación de vista oculta en función de acción en frame.")
                    Text("✅ Lista de pacientes con navegación a datos médicos.")
                    Text("✅ Presentación de datos médicos en forma de lista mediante Scroll y acceso a histórico.")
                    Text("✅ Vista modal para presentar cada histórico de datos médico.")
                    Text("✅ Gráfica de datos médicos mediantes frames.")
                }
                Section(header: Text("Futuras implementaciones")) {
                    Text("Adaptación a iPad.")
                    Text("Idiomas.")
                    Text("Buscador de paciente en la lista.")
                    Text("Core Data.")
                    Text("Todo lo que se me ocurra y más.")
                }
                Section(header: Text("Copyright")) {
                    HStack {
                        Text("Icono de la app de Freepik:")
                        Button(action: {
                            let url = URL(string: "https://www.flaticon.com")
                            UIApplication.shared.open(url!)
                        }) {
                            Text("Flaticon")
                        }
                    }
                }
            }
        }
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
