//
//  CalculatorBrain.swift
//  Calculator
//
//  Created by Ben Gohlke on 5/30/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

enum OperatorType: String {
    
    case addition = "+"
    case subtraction = "−"
    case multiplication = "×"
    case division = "÷"
    
}




class CalculatorBrain {
    var operand1String = ""
    var operand2String = ""
    var operatorType: OperatorType?
    
    func addOperandDigit(digit: String) -> String {
        if operatorType == nil{
            operand1String += digit
            return operand1String
        }else {
            
            operand2String += digit
            return operand2String
        }
    }
        
    
    
  func setOperator(_ operatorString: String) {
    ////initalize the enum!!!!! Take the operator string put it in the enum and see whatever it matches
    if let opType = OperatorType(rawValue: operatorString){
        operatorType = opType
    }
        }
    
    
   func calculateIfPossible() -> String? {
    if !operand1String.isEmpty {
    if !operand2String.isEmpty {
    if let operatorT = operatorType {
    if let operand1 = Double(operand1String){
    if let operand2 = Double(operand2String){
        switch operatorT {
        case .addition: return String(operand1 + operand2)
        case .subtraction: return String(operand1 - operand2)
        case .multiplication: return String (operand1 * operand2)
        case .division: if operand2 != 0 {
            
            return String(operand1 / operand2)
        } else {
            return "Error"
            }
        }
            
        }
        }
            
            
        }
            
        }
    }
   return nil
    }

  }

 

