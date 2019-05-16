//
//  ViewController.swift
//  eos
//
//  Created by Tim Finkler on 09.05.19.
//  Copyright © 2019 consult.IN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weiterButton1: UIButton!
    @IBOutlet weak var labl: UILabel!
    
    @IBAction func Button(_ sender: UIButton) {
        
        
        
    }
    
    var button = dropDownBtn()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // Do any additional setup after loading the view.
        button = dropDownBtn.init(frame: CGRect(x: 0, y: 0, width:0, height:0 ))
        button.setTitle("Wer bin ich", for: normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(button)
        
        button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        
        button.widthAnchor.constraint(equalToConstant: 150).isActive = true
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    class dropDownBtn: UIButton {
        
        let dropView = dropDownView()


        override init(frame: CGRect) {
            super.init(frame: frame)
            
            self.backgroundColor = UIColor.darkGray
            
            dropView = dropDownView.init(x:0 , y:0 , width:0 , height:0 )
            dropView.translatesAutoresizingMaskIntoConstraints = false
            
            self.Subview?.addSubview(dropView)
            self.superview.
        
            
        }
        
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    }
    
        
  
}

class dropDownView: UIView, UITableViewDelegate, UITableViewDataSource{
    
    var dropDownOptions = [String]()
    
    var tableView = UITableView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(tableView)
        
        tableView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true

        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return dropDownOptions.count

    }
    
    
    func tableView( tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        var cell = UITableViewCell()
        
        cell.textLabel?.text = dropDownOptions[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(dropDownOptions[indexPath.row])
        
    }
    
    
    
}

