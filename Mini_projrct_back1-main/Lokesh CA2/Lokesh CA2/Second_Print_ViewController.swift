//
//  Second_Print_ViewController.swift
//  Lokesh CA2
//
//  Created by Student on 29/10/22.
//  Copyright © 2022 lpu. All rights reserved.
//

import UIKit

class Second_Print_ViewController: UIViewController {
    
    
    var lname=String()
    var lage=String()
    var lweight=String()
    var ltemperature=String()
    var lsymptoms=String()
    var lsex=String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        l1.text=lname
        l2.text=lage
        l3.text=lsex
        l4.text=lweight
        l5.text=ltemperature
        l6.text=lsymptoms


        // Do any additional setup after loading the view.
    }
    
    @IBOutlet var l1: UILabel!
    
    @IBOutlet var l2: UILabel!
    
    @IBOutlet var l3: UILabel!
    
    @IBOutlet var l4: UILabel!
        
    @IBOutlet var l5: UILabel!
    
    @IBOutlet var l6: UILabel!
    
}
