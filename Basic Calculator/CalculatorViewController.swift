//
//  CalculatorViewController.swift
//  Basic Calculator
//
//  Created by Anton Huisamen on 2018/06/02.
//  Copyright © 2018 antonsolo. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var answerLabel: UILabel!
    
    var number = ""
    
    var firstNumber = ""
    var secondNumber = ""
    var plusMinusOperator = ""

    

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func handleButtonTapped(_ sender: UIButton) {
        number = number + sender.currentTitle!
        answerLabel.text = number
        
        
    }
    
    @IBAction func handleClearButtonTapped(_ sender: Any) {
        
        number = ""
        firstNumber = ""
        secondNumber = ""
        plusMinusOperator = ""
        answerLabel.text = "0"
    }
    
    @IBAction func handleDevideButtonTapped(_ sender: Any) {
        firstNumber = number
        number = ""
        plusMinusOperator = "/"
    }
    
    @IBAction func handleMultiplyButtonTapped(_ sender: Any) {
        firstNumber = number
        number = ""
        plusMinusOperator = "*"
    }
    
    
    
    
    @IBAction func handlePlusButtonTapped(_ sender: Any) {
        firstNumber = number
        number = ""
        plusMinusOperator = "+"
    }
    
    @IBAction func handleMinusButtonTapped(_ sender: Any) {
        
        firstNumber = number
        number = ""
        plusMinusOperator = "-"
        
    }
    
    @IBAction func handleEquelsButtonTapped(_ sender: Any) {
        secondNumber = number
        
        
        
        let firstInt = Double(firstNumber)
        let secondInt = Double(secondNumber)
       
        guard firstInt != nil && secondInt != nil else {
            return
        }
        
        if plusMinusOperator == "+" {
            answerLabel.text = "\(firstInt! + secondInt!)"
        }
        if plusMinusOperator == "-" {
            answerLabel.text = "\(firstInt! - secondInt!)"
        }
        if plusMinusOperator == "/" {
            answerLabel.text = "\(firstInt! / secondInt!)"
        }
        if plusMinusOperator == "*" {
            answerLabel.text = "\(firstInt! * secondInt!)"
        }

        
    }
    
}
