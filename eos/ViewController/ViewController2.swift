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
