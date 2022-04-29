//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Taha Enes Aslantürk on 29.04.2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        
        let bmiValue = weight / pow(height, 2)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "What a poor :(", color: .systemBlue )
        }else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "You are perfect!", color: .systemGreen)
        }else {
            bmi = BMI(value: bmiValue, advice: "I think this is also good!", color: .systemPink)
        }
        
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getBGColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}
