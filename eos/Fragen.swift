//
//  Fragen.swift
//  eos
//
//  Created by Tim Finkler on 10.05.19.
//  Copyright © 2019 consult.IN. All rights reserved.
//

import Foundation

struct Frage {
    let frage:      String
    let antworten:  [String]
    let richtigeAntwort: Int
}

var fragen: [Frage] = [
    // diese Fragen und Anworten sind nicht qualitativ
    Frage(
        frage: "Holes in vertical Planes need special attention. What size must they be to be buildable?",
        antworten: ["⌀<8mm", "⌀>8mm"],
        richtigeAntwort: 0),
    Frage(
        frage: "Wall thickness is very important. Whats the minimum Wall thickness to use?",
        antworten: ["⌀<5mm", "⌀=15mm", "⌀>2mm"],
        richtigeAntwort: 1)
]

var aktuelleFrage: Frage?
