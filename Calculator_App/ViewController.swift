//
//  ViewController.swift
//  Calculator_App
//
//  Created by Apeksha Parmar on 2022-10-07.
//

import UIKit

class ViewController: UIViewController {
    
    //Result Label
    @IBOutlet weak var ResultLabel: UILabel!
    
   
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    }
    
    // Operator Functions
    
    @IBAction func OperatorButton_Pressed(_ sender: UIButton)
    {
        var button = sender as UIButton
        ResultLabel.text = button.titleLabel!.text
    }

    @IBAction func NumberButton_Pressed(_ sender: UIButton)
    {
    }
    
    @IBAction func ExtraButton_Pressed(_ sender: UIButton)
    {
    }
        
    @IBAction func Button1_Pressed(_ sender: UIButton) {
        let button = sender as UIButton
        var currentInput = button.titleLabel?.text
        
    }
}

