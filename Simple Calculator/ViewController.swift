//
//  ViewController.swift
//  Simple Calculator
//
//  Created by Rasyid Respati Wiriaatmaja on 27/01/20.
//  Copyright © 2020 rasyidrw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var outputLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func plusButton(_ sender: UIButton) {
        counting(aritmatik: "+")
    }
    @IBAction func minusButton(_ sender: UIButton) {
        counting(aritmatik: "-")
    }
    @IBAction func multipleButton(_ sender: UIButton) {
        counting(aritmatik: "x")
    }
    @IBAction func dividedButton(_ sender: UIButton) {
        counting(aritmatik: "/")
    }

    func counting(aritmatik : String){
        if textField1.text == "" || textField2.text == "" {
            outputLabel.text = "Input!"
        }
        else {
            let input1 = Double(textField1.text!)
            let input2 = Double(textField2.text!)
            var output : Double?
            
            switch aritmatik {
            case "+":
                output = input1! + input2!
            case "-":
                output = input1! - input2!
            case "x":
                output = input1! * input2!
            case "/":
                output = input1! / input2!
            default:
                break
            }
            
            outputLabel.text = String(format: "%.0f", output!)
        }
    }
}

