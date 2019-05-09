//
//  ViewController.swift
//  eos
//
//  Created by Tim Finkler on 09.05.19.
//  Copyright © 2019 consult.IN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBOutlet weak var labl: UILabel!
    @IBAction func buttonClicked(_ sender: UIButton) {
        print("Das ist ein Erfolg!")
        labl.text = "Zoe! Schön, dass du da bist"
    }


}

