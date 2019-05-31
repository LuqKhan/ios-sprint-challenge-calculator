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
    
    
    var calculatorBrainInstance = CalculatorBrain.init()
  
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
   
    
    
    }
    
    // MARK: - Action Handlers
    
    @IBAction func operandTapped(_ sender: UIButton) {
        
    var buttonText: String = ""
        
        if let text = sender.titleLabel?.text  {
            
            buttonText = text
            
        }
    
     calculatorBrainInstance.operand1String = buttonText
 outputLabel.text = calculatorBrainInstance.addOperandDigit()
    
    }
    
    @IBAction func operatorTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func equalTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func clearTapped(_ sender: UIButton) {
        
    clearTransaction()
    
    }
    
    // MARK: - Private
    
    private func clearTransaction() {
        
    outputLabel.text = "0"
    
    }






}
