//
//  Teilnehmer.swift
//  eos
//
//  Created by Tim Finkler on 09.05.19.
//  Copyright © 2019 consult.IN. All rights reserved.
//

import Foundation

enum geschlecht { case männlich, weiblich, divers }
enum rollen { case anderes }

class Teilnehmer {
    
    var vorname : String?
    var nachname : String?
    var geschlecht : geschlecht?
    var rolle : rollen?
}
