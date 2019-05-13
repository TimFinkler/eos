//
//  Teilnehmer.swift
//  eos
//
//  Created by Tim Finkler on 09.05.19.
//  Copyright © 2019 consult.IN. All rights reserved.
//
//
//  RatingController.swift
//
//
//  Created by mohamed al-ghamdi on 17/04/2018.
//  Copyright © 2018 mohamed al-ghamdi. All rights reserved.
//

import Foundation

enum geschlechter { case männlich, weiblich, divers }

class Teilnehmer {
    var vorname : String?
    var nachname : String?
    var geschlecht : geschlechter?
    var rückmeldung : Bewertung?

    
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

class Bewertung {
    var sterne : Int?
    var kommentar: String?
}

//////////////////////////////STERNEN-BEWERTUNG////////////////////////////////////////////

import UIKit

class RatingController: UIStackView {
    var starsRating = 0
    var starsEmptyPicName = "star" // change it to your empty star picture name
    var starsFilledPicName = "starfill" // change it to your filled star picture name
    override func draw(_ rect: CGRect) {
        let starButtons = self.subviews.filter{$0 is UIButton}
        var starTag = 1
        for button in starButtons {
            if let button = button as? UIButton{
                button.setImage(UIImage(named: starsEmptyPicName), for: .normal)
                button.addTarget(self, action: #selector(self.pressed(sender:)), for: .touchUpInside)
                button.tag = starTag
                starTag = starTag + 1
            }
        }
        setStarsRating(rating:starsRating)
    }
    func setStarsRating(rating:Int){
        self.starsRating = rating
        let stackSubViews = self.subviews.filter{$0 is UIButton}
        for subView in stackSubViews {
            if let button = subView as? UIButton{
                if button.tag > starsRating {
                    button.setImage(UIImage(named: starsEmptyPicName), for: .normal)
                }else{
                    button.setImage(UIImage(named: starsFilledPicName), for: .normal)
                }
            }
        }
    }
    @objc func pressed(sender: UIButton) {
        setStarsRating(rating: sender.tag)
    }
}
