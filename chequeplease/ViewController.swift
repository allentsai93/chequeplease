//
//  ViewController.swift
//  chequeplease
//
//  Created by Allen Tsai on 2015-07-20.
//  Copyright (c) 2015 Allen Tsai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var peopleSlider: UISlider!
    
    @IBOutlet var peopleLabel: UILabel!
    
    @IBOutlet var chequeLabel: UILabel!

    @IBOutlet var chequeSlider: UISlider!
    
    @IBOutlet var tipLabel: UILabel!
    
    @IBOutlet var tipSlider: UISlider!
    
    @IBOutlet var result: UILabel!
    
    @IBAction func peopleSlided(sender: AnyObject) {
        var peopleValue = Int(peopleSlider.value)
        peopleLabel.text = "\(peopleValue)"
        
        if peopleValue == 0 {
            peopleLabel.text = "Number of People"
        }
    }

    @IBAction func chequeSlided(sender: AnyObject) {
        var chequeValue = Int(chequeSlider.value)
        chequeLabel.text = "\(chequeValue)"
        
        if chequeValue == 0 {
            chequeLabel.text = "Cost of Cheque"
        }
    }
    @IBAction func tipSlided(sender: AnyObject) {
        var tipValue = Int(tipSlider.value)
        tipLabel.text = "\(tipValue)%"
        
        if tipValue == 0 {
            tipLabel.text = "Tip %"
        }
    }
    
    @IBAction func calculateTotal(sender: AnyObject) {
        var resultWoTip = Int(chequeSlider.value) / Int(peopleSlider.value);
        
        println(resultWoTip)
        
        var resultWTip = Double(resultWoTip) * (1 + (Double(tipSlider.value) / 100))
        
        var roundedResult = round(100*resultWTip)/100
        
        result.text = "\(roundedResult)"
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

