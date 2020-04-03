//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Josh Satriano on 3/16/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiString = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiString
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        let advice: String
        let color: UIColor
        
        if bmiValue < 18.5 {
            advice = "Eat more pies!"
            color = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
        } else if bmiValue < 24.9 {
            advice = "Fit as a fiddle!"
            color = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        } else {
            advice = "Eat less pies!"
            color = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        }
        
        bmi = BMI(value: bmiValue, advice: advice, color: color)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}
