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
    
    func addOperandDigit() -> String {
        var digit = ""
        if operatorType == nil {
            
       digit.append(operand1String)
        
       
        } else if operatorType != nil {
            
            operand2String.append(digit)
        }
        return digit 
    }
    
/*  func setOperator(_ operatorString: String) {
    
    if operatorType == OperatorType.addition  {
        

    
    }
    }
    
   func calculateIfPossible() -> String? {
        
    }

 
 */


}


 

