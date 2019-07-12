//
//  ViewController.swift
//  Calculator
//
//  Created by Ben Gohlke on 5/29/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var outputLabel: UILabel!
    
    
    var brain: CalculatorBrain?
  
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
   brain = CalculatorBrain()
    
    
    }
    
    // MARK: - Action Handlers
    
    @IBAction func operandTapped(_ sender: UIButton) {
        
        
        if let digit = sender.titleLabel?.text  {
            if digit == "." { sender.isEnabled = false }
            else { outputLabel.text = brain?.addOperandDigit(digit: digit)
        
            
        }
        }
    
    }
    
    @IBAction func operatorTapped(_ sender: UIButton) {
        if let opType = sender.titleLabel?.text {
             brain?.setOperator(opType)
        }
    
    }
    
    @IBAction func equalTapped(_ sender: UIButton) {
            if let answer = brain?.calculateIfPossible()  {
        
        outputLabel.text = answer
        brain = CalculatorBrain()
    }
    }



    @IBAction func clearButtonTapped(_ sender: Any) {
    brain = CalculatorBrain()
        outputLabel.text = "0"
    
    }
    



}



