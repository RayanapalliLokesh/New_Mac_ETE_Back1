//
//  UserDetailsController.swift
//  Lokesh CA2
//
//  Created by Student on 07/10/22.
//  Copyright © 2022 lpu. All rights reserved.
//

import UIKit

class UserDetailsController: UIViewController {
var sex = "Not Selected"
    override func viewDidLoad() {
        super.viewDidLoad()
        
        }
    
    override func prepare(for segue: UIStoryboardSegue, sender:Any?){
        let newVC: PrintController = segue.destination as! PrintController
        let name=pname.text!
        let age=page.text!
        let weight=pweight.text!
        let temperature=ptemperature.text!
        let symptoms=psymptoms.text!

        newVC.lname=name
        newVC.lage=age
        newVC.lsex=sex
        newVC.lweight=weight
        newVC.ltemperature=temperature
        newVC.lsymptoms=symptoms
        
        
        // Do any additional setup after loading the view.
    }
    
    

    @IBOutlet var MF_IMG: UIImageView!
    

    @IBAction func MF(_ sender: UISegmentedControl) {
        if(sender.selectedSegmentIndex==0){
            MF_IMG.image=UIImage(named: "male.jpeg")
            sex = "Male"
        }
        else{
            MF_IMG.image=UIImage(named: "female.jpeg")
            sex = "Female"
        }
    }
    
    
    @IBAction func sl1(_ sender: UISlider) {
        pweight.text=String(Int(sender.value))
    }
    
    @IBOutlet var pname: UITextField!
    
    @IBOutlet var page: UITextField!
    
    
    @IBOutlet var pweight: UITextField!
    
    
    @IBOutlet var ptemperature: UITextField!
    
    
    @IBOutlet var psymptoms: UITextField!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


