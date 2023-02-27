//
//  ViewController.swift
//  Euler-Lagrange Calculator
//
//  Created by Dante Ausonio on 2/1/23.
//

import UIKit
import Foundation


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        i_vRelationship()
        
    }
    
    
    func i_vRelationship() {
        
        
    }
    
    
    func lagrange() {
        let h: Double = 0.1 // Step Size
        let y_0: Double = 1 // Initial Value for y
        let t_0: Double = 1 // Initial Value for t
        let numSteps: Int = 10
        
        var y_n: Double = y_0
        var t_n: Double = t_0
        var y_n1: Double
        
        let zeroThItteration: String = ("y(\(t_0)) = \(y_0)")
        print(zeroThItteration)
        
        for i in 0...numSteps {
            
            var result = y_n + (h * (pow(t_n,2) - (2 * t_n * y_n)))
            
            print("y(\(String(format: "%.6f", t_n + h)))", " = ", String(format: "%.6f", result))
            
            t_n = t_n + h
            y_n = result
        }

    }


}

