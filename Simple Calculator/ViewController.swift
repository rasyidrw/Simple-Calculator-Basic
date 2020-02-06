//
//  ViewController.swift
//  Simple Calculator
//
//  Created by Rasyid Respati Wiriaatmaja on 27/01/20.
//  Copyright © 2020 rasyidrw. All rights reserved.
//

import UIKit

class ViewController: UIViewController, HitungProtocol {
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var outputLabel: UILabel!
    
    var hitungPresenter : HitungPresenter?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hitungPresenter = HitungPresenter()
        hitungPresenter?.hitungProtocol = self
        
        outputLabel.text = ""
        // Do any additional setup after loading the view.
    }
    @IBAction func plusButton(_ sender: UIButton) {
        hitungPresenter?.actionHitung(angkaAwal : textField1.text!, angkaAkhir : textField2.text!, opr: "+")
    }
    @IBAction func minusButton(_ sender: UIButton) {
        hitungPresenter?.actionHitung(angkaAwal : textField1.text!, angkaAkhir : textField2.text!, opr: "-")
    }
    @IBAction func multipleButton(_ sender: UIButton) {
        hitungPresenter?.actionHitung(angkaAwal : textField1.text!, angkaAkhir : textField2.text!, opr: "*")
    }
    @IBAction func dividedButton(_ sender: UIButton) {
        hitungPresenter?.actionHitung(angkaAwal : textField1.text!, angkaAkhir : textField2.text!, opr: "/")
    }
    
    func showMessage(message : String) {
        
        let alert = UIAlertController(title: "Warning", message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(ok)
        present(alert, animated: true, completion: nil)
    }
    
    func showResult(result : Double){
        
        let amountValue = String(format: "%g", result)
        outputLabel.text = String(amountValue)
    }
}

