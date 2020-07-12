//
//  Extensiones.swift
//  AppSalud
//
//  Created by Xavier Camps Novi on 12/07/2020.
//  Copyright © 2020 Xavier Camps Novi. All rights reserved.
//

import Foundation

extension Date {
    var fullDate: String {
        let df = DateFormatter()
        df.locale = Locale.current
        df.dateStyle = .full
        df.timeStyle = .none
        var fecha = df.string(from: self)
        let first = fecha.removeFirst()
        fecha.insert(contentsOf: first.uppercased(), at: fecha.startIndex)
        return fecha
    }
}
