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
            
        outputLabel.text = brain?.addOperandDigit(digit: digit)
        
            
        }
    
    
    }
    
    @IBAction func operatorTapped(_ sender: UIButton) {
        if let opType = sender.titleLabel?.text {
             brain?.setOperator(opType)
        }
    
    }
    
    @IBAction func equalTapped(_ sender: UIButton) {
        //     if let solution = brain.calculateIfPossible() {
        
      //  outputLabel.text = solution
       // clearTransaction()
    }
    }
    
    @IBAction func clearTapped(_ sender: UIButton) {
        ///keep the clearing seperate from the outpul label = 0
    clearTransaction()
    outputLabel.text = "0"
    }
    
    // MARK: - Private
    
    private func clearTransaction() {
     brain = CalculatorBrain()
    
    }






}
