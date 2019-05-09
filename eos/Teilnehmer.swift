//
//  Teilnehmer.swift
//  eos
//
//  Created by Tim Finkler on 09.05.19.
//  Copyright © 2019 consult.IN. All rights reserved.
//

import Foundation

enum geschlechter { case männlich, weiblich, divers }

class Teilnehmer {
    var vorname : String?
    var nachname : String?
    var geschlecht : geschlechter?

    
    init(){
        print("keine Person")
        //Errorhandling wäre hier nötig -> zB anzeigen, dass etwas fehlt
    }
    
    init(vn: String, nn: String, geschl: geschlechter) {        //erstellen einer Person
        vorname = vn
        nachname = nn
        geschlecht = geschl
    }
    
}
