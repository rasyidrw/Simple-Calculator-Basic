//
//  HitungPresenter.swift
//  Simple Calculator
//
//  Created by Rasyid Respati Wiriaatmaja on 06/02/20.
//  Copyright © 2020 rasyidrw. All rights reserved.
//

import Foundation

class HitungPresenter: NSObject {
    
    var hitungProtocol : HitungProtocol?
    
    func actionHitung(angkaAwal : String, angkaAkhir : String, opr : String) {
        
        let n1 = Double(angkaAwal)
        let n2 = Double(angkaAkhir)
        
        if n1 == nil || n2 == nil{
            hitungProtocol?.showMessage(message: "Tidak boleh kosong")
        } else {
            
            var hasil : Double = 0
            switch opr {
            case "+":
                hasil = n1! + n2!
            case "-":
                hasil = n1! - n2!
            case "*":
                hasil = n1! * n2!
            case "/":
                hasil = n1! / n2!
            default:
                print("default")
            }
            
            hitungProtocol?.showResult(result: hasil)
        }
    }
}
