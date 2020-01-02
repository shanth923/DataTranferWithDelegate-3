//
//  ViewController.swift
//  DataTranferWithDelegate
//
//  Created by R Shantha Kumar on 11/15/19.
//  Copyright © 2019 R Shantha Kumar. All rights reserved.
//

import UIKit
import TextFieldEffects


class ViewController: UIViewController,datatransfer {
 
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    
    var data = [[String]]()
    
    func passData(passData: [String])
    {
       data.append(passData)


        var LHSLabel:String = ""
        var RHSLabel:String = ""
        
        
        
        
         var ypos = 30
        var yposi = ypos+30
        for x in data
        {
            
            for m in 0...1
            {
                if(m == 0)
                {
                    label1.frame = CGRect(x: 20, y: yposi, width: 150, height: 40)
                    
                    LHSLabel = LHSLabel + x[m]
                    
                    
                
                }
                else
                {
                    label2.frame = CGRect(x: 200, y: yposi, width: 150, height: 40)
                    RHSLabel = RHSLabel + x[m]
                 
                    
                }

 yposi += 30
            }
        }
       
        label1.text = LHSLabel
        
        label2.text = RHSLabel
    }
    @IBAction func addButton(_ sender: UIButton)
    {
        
        let target = storyboard?.instantiateViewController(withIdentifier: "secondVC") as! secondViewController
        
         target.delegate = self
        
        present(target, animated: true)
        
        
    }
    
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }


}


