//
//  ViewController2ViewController.swift
//  eos
//
//  Created by Tim Finkler on 16.05.19.
//  Copyright © 2019 consult.IN. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    
    @IBAction func backToMainBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "backToMain", sender: self)
    }
    @IBAction func anglesDetailsBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "showAnglesDetails", sender: self)
    }
    @IBAction func overhangsDetailsBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "showOverhangsDetails", sender: self)
    }
    @IBAction func wallThicknessDetailsBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "showWallThicknessDetails", sender: self)
    }
    @IBAction func postProcessingDetailsBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "showPostProcessingDetails", sender: self)
    }
    @IBAction func holesizesDetailsBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "showHoleSizesDetails", sender: self)
    }
    @IBAction func surfaceQualityDetailsBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "showSurfaceQualityDetails", sender: self)
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
