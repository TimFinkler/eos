//
//  3ViewController.swift
//  eos
//
//  Created by Tim Finkler on 16.05.19.
//  Copyright © 2019 consult.IN. All rights reserved.
//

import UIKit

class mainViewController: UIViewController {
//hier sind die Buttons zu den Themen aufgelistet
  
    
    @IBAction func anglesBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "showAngles", sender: self)
    }
    @IBAction func overhangsBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "showOverhangs", sender: self)
    }
    @IBAction func wallThicknessBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "showWallThickness", sender: self)
    }
    @IBAction func postProcessingBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "showPostProcessing", sender: self)
    }
    @IBAction func holeSizesBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "showHoleSizes", sender: self)
    }
    @IBAction func surfaceQualityBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "showSurfaceQuality", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
