//
//  ViewController.swift
//  Demo
//
//  Created by Apeksha Parmar on 2022-10-07.
//

import UIKit

class ViewController: UIViewController {
    
    var firstNum: String = "";
    var operation: String = "";
    var secondNum: String = "";
    var haveResult: Bool = false;
    var resultNumber: String = "";
    var numAfterResult: String = "";
    
    @IBOutlet weak var ResultLabel: UILabel!
    
    @IBOutlet var calcButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        for button in calcButtons {
            button.layer.cornerRadius = button.frame.size.height / 2 ;
            button.titleLabel?.font = UIFont(name: "System", size: 24)
        }
    }
    
    @IBAction func NumberButton_Pressed(_ sender: UIButton) {
        if operation == "" {
            firstNum += String(sender.tag);
            ResultLabel.text = firstNum;
        }
        else if operation != "" && !haveResult {
            secondNum += String(sender.tag);
            ResultLabel.text = secondNum;
        }
        else if operation != "" && haveResult {
            numAfterResult += String(sender.tag)
            ResultLabel.text = numAfterResult;
        }
        
    }
    
    @IBAction func ADD(_ sender: Any) {
        operation = "+";
    }
    
    @IBAction func MINUS(_ sender: Any) {
        operation = "-";
    }
    
    @IBAction func MULT(_ sender: Any) {
        operation = "x";
    }
    
    @IBAction func DIV(_ sender: Any) {
        operation = "/";
    }
    
    @IBAction func DOT(_ sender: UIButton) {
        operation = ".";
    }
    
    @IBAction func Equals(_ sender: Any) {
        resultNumber = String(doOperation())
        let numArray = resultNumber.components(separatedBy: ".")
        print(numArray)
        if numArray[1] == "0"{
            ResultLabel.text = numArray[0]
        }
        else {
            ResultLabel.text = resultNumber;
        }
        
        numAfterResult = "";
        
    }
    
    @IBAction func OperationCross(_ sender: Any) {
    }
    @IBAction func Percentage(_ sender: Any) {
    }
    
    @IBAction func ExtraButton_Pressed(_ sender: UIButton) {
        firstNum = "";
        operation = "";
        secondNum = "";
        haveResult = false;
        resultNumber = "";
        numAfterResult = "";
        ResultLabel.text = "0";
    }
    
    func doOperation() -> Double {
        if operation == "+" {
            if !haveResult {
                haveResult = true;
                return Double(firstNum)! + Double(secondNum)!
            }
            else {
                return Double(resultNumber)! + Double(numAfterResult)!
            }
        }
        else if operation == "-"{
            if !haveResult {
                haveResult = true;
                return Double(firstNum)! - Double(secondNum)!;
            }
            else {
                return Double(resultNumber)! - Double(numAfterResult)!
            }
        }
        else if operation == "x"{
            if !haveResult {
                haveResult = true;
                return Double(firstNum)! * Double(secondNum)!;
            }
            else {
                return Double(resultNumber)! * Double(numAfterResult)!
            }
        }
        else if operation == "/"{
            if !haveResult {
                haveResult = true;
                return Double(firstNum)! / Double(secondNum)!;
            }
            else {
                return Double(resultNumber)! / Double(numAfterResult)!
            }
        }
        return 0
    }
    
}
