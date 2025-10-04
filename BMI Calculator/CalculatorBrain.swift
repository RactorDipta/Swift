//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Mac Book on 8/9/25.
//  Copyright © 2025 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    

    func getBMIValue() -> String{
        
        let bmiTo1DecimalPlace = String(format: "%.1f",bmi?.value ?? 0.0)
            return bmiTo1DecimalPlace
        
    }
    func getAdvice() -> String{
        return bmi?.advised ?? "No Advice"
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? UIColor.white
    }
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
       // bmi = BMI(value: bmiValue, advised: <#T##String#>, color: <#T##UIColor#>)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advised: "Eat more food", color: UIColor.blue)
           
        }else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advised: "Keep it up", color: UIColor.green)
        }
        else{
            bmi = BMI(value: bmiValue, advised: "Eat less food", color: UIColor.red)
        }
    }
}
