//
//  ViewController.swift
//  tippy
//
//  Created by Mike Yiu on 12/4/17.
//  Copyright © 2017 Mike Yiu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var CelebIcon: UIImageView!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var twoTotalLabel: UILabel!
    @IBOutlet weak var threeTotalLablel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // sets the title in the navigation bar
        self.title = "Tip Calculator"
        // ...
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let tipPercentages = [0.18, 0.2 , 0.25]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        let twoTotal = (bill + tip)/2.0
        let threeTotal = (bill + tip)/3.0
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        twoTotalLabel.text = String(format: "$%.2f", twoTotal)
        threeTotalLablel.text = String(format: "$%.2f", threeTotal)
        
    }
    @IBAction func onGoButton(_ sender: Any) {
        
            self.CelebIcon.center.y += 300
    }
    
}

