//
//  ViewController.swift
//  CalculatorNEW
//
//  Created by Dhiman on 2023-03-21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textValue: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
        
        @IBAction func allClear(_ sender: UIButton) {
            textValue.text = ""
            
        }
        
        @IBAction func mathOperations(_ sender: UIButton) {
            
            
           
            if sender.tag <= 9 && sender.tag >= 0{
                textValue.text = (textValue.text ?? "") + String(sender.tag)
                
                
            }else if(sender.tag==12){
                
               let nxexpress = NSExpression(format: textValue.text!)
                let result = nxexpress.expressionValue(with: nil, context: nil) as? Double
                
                textValue.text = String(format:"%.2f",result!)
                
            }else{
                textValue.text = (textValue.text ?? "") + (sender.titleLabel?.text ?? "")
                
            }}


}

