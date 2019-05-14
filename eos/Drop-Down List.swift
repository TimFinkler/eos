//
//  Drop-Down List.swift
//  eos
//
//  Created by Zoe Dechand on 14.05.19.
//  Copyright © 2019 consult.IN. All rights reserved.
//


//Beispiel1
import Foundation
class MyViewController : UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    @IBOutlet weak var pickerTextField : UITextField!
    let salutations = ["", "Verkäufer", "Konstrukteur", "Sonstiges"]
    override func viewDidLoad() {
        super.viewDidLoad()
        let pickerView = UIPickerView()
        pickerView.delegate = self
        pickerTextField.inputView = pickerView
    }
    // Sets number of columns in picker view
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -&gt; Int {
    return 1
    }
    // Sets the number of rows in the picker view
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -&gt; Int {
    return salutations.count
    }
    // This function sets the text of the picker view to the content of the "salutations" array
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -&gt; String? {
    return salutations[row]
    }
    // When user selects an option, this function will set the text of the text field to reflect
    // the selected option.
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        pickerTextField.text = salutations[row]
    }
}





/*

//Beispiel 2
import Foundation
import UIKit
clas ViewController: UIViewController {
    @IBOutlet var btnSelectColor: UIButton!
    @IBOutlet var tblColorList: UITableView!
    
    let arrayColor : NSMutableArray = [//Antwort Möglichkeiten z.Bsp "Red Color" , "Green Color"]
    overide func viewDidLoad() {
        super.viewDidLoad()
       // btnSelectColor.backgroundColor = UIColor.whiteColor()
        //tblColorList.backgroundColor = UIColor.whiteColor()
        tblColorList.hidden = true
        
    }
    @IBAction func btnSelectColorClick(sender: AnyObject){
        if tblColorList.hidden == true {
            tblColorList.hidden = false
        }else {
            tblColorList.hidden = true
        }
        numberOfRowsInSection() //Set array Count
        cellForRowAtIndexPath() //Set color names from array
        didSelectRowAtIndexPath() //change button title to the selected color Name and change the view background
        
    }
    
    func numberOfSectionsInTheTableView(tableView: UITableView) -> Int{
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel?.text = arrayColor[indexPath.row] as? Stringreturn cell
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        let selectedItem = arrayColor.
        //IF...else .... Möglichkeiten
        tbl ColorList?.hidden =true
        
    }
}
*/
