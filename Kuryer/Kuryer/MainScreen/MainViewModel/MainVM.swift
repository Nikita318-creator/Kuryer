//
//  MainVM.swift
//  Kuryer
//
//  Created by никита уваров on 20.11.23.
//

import UIKit

struct Kuryer {
    var id: Int
    var pointAddres: String
    var clientAddres: String
}

class MainVM {
    var kuryers: [Kuryer] = MocKuryers.kuryers
}

class MocKuryers {
    static var kuryers: [Kuryer] = [
        Kuryer(id: 1, pointAddres: "Brestskay 23", clientAddres: "Brestskay 45"),
        Kuryer(id: 2, pointAddres: "Brestskay 24", clientAddres: "Brestskay 90"),
        Kuryer(id: 3, pointAddres: "Moskowska 1", clientAddres: "Moskowska 456")
    ]
}
