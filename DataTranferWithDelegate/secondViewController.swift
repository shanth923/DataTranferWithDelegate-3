//
//  secondViewController.swift
//  DataTranferWithDelegate
//
//  Created by R Shantha Kumar on 11/15/19.
//  Copyright © 2019 R Shantha Kumar. All rights reserved.
//

import UIKit
import TextFieldEffects

class secondViewController: UIViewController {
    
    var delegate:datatransfer?
    
    
    
    
    
    

    
    @IBOutlet var firstName: UITextField!
    
    @IBOutlet var secondName: UITextField!
    
    
    @IBAction func submit(_ sender: UIButton) {
        
        
        
        let dataPass:[String] = [firstName.text!, secondName.text!]
        
        self.delegate?.passData(passData: dataPass )
        
        dismiss(animated: true)
       
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        firstName.placeholder = "First Name"
        secondName.placeholder = "Second Name"
        
        

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
