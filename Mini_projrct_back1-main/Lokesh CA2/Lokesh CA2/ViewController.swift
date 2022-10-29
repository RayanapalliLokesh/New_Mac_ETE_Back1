//
//  ViewController.swift
//  Lokesh CA2
//
//  Created by Student on 07/10/22.
//  Copyright © 2022 lpu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let newVC: SecondViewController = segue.destination as! SecondViewController
        let pdata=t1.text!
        let ldata=t2.text!
        
        if (pdata=="Lokesh") && (ldata=="12345"){
            let welcomenote = "Welcome " + pdata
            let loginnote = "Successfully Logged-In"
            newVC.data=welcomenote
            newVC.data2=loginnote
        }
        else{
            let welcomenote = " Wrong Username or Password"
            let loginnote = " Go Back and Enter Correct Details"
            newVC.data=welcomenote
            newVC.data2=loginnote
            
            let alert=UIAlertController(title: "Warning", message: "Wrong UserName or Password", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Try Again", style:.default, handler: nil))
            self.present(alert, animated:true, completion: nil)
        }
        
        
    }

    @IBOutlet var t1: UITextField!
    
    @IBOutlet var t2: UITextField!
}

