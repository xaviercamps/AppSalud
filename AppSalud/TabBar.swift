//
//  TabBar.swift
//  AppSalud
//
//  Created by Xavier Camps Novi on 12/07/2020.
//  Copyright © 2020 Xavier Camps Novi. All rights reserved.
//

import SwiftUI

struct TabBar: View {
    
    var body: some View {
        TabView() {
            ContentView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Menú")
                }
                .tag(0)
            Settings()
                .tabItem {
                    Image(systemName: "ellipsis")
                    Text("Ajustes")
                }
                .tag(0)
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar().environmentObject(PatientsData())
    }
}
