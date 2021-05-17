//
//  ViewController.swift
//  Calculator
//
//  Created by Student User on 2/18/20.
//  Copyright © 2020 Student User. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topLabel: UILabel!
    var leftOperand = 0.0
    var rightOperand = 0.0
    var num: String = "" {
        didSet { topLabel.text = "\(num)"}
    }
    var op: String = "" {
        didSet{
            topLabel.text! = "\(op)"}
    }
    var ans: Double = 0
    var value: Double = 0
    var hasDecimal : Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topLabel.text = ""
    }

    @IBAction func clear(_ sender: UIButton) {
        topLabel.text = ""
        rightOperand = 0
        leftOperand = 0
        num = ""
        hasDecimal = false;
    }
    
    @IBAction func zero(_ sender: UIButton) {
        num += "0"
    }
    @IBAction func one(_ sender: UIButton) {
        num += "1"
    }
    @IBAction func two(_ sender: UIButton) {
        num += "2"
    }
    @IBAction func three(_ sender: UIButton) {
        num += "3"
    }
    @IBAction func four(_ sender: UIButton) {
        num += "4"
    }
    @IBAction func five(_ sender: UIButton) {
        num += "5"
    }
    @IBAction func six(_ sender: UIButton) {
        num += "6"
    }
    @IBAction func seven(_ sender: UIButton) {
        num += "7"
    }
    @IBAction func eight(_ sender: UIButton) {
        num += "8"
    }
    @IBAction func nine(_ sender: UIButton) {
        num += "9"
    }
    @IBAction func division(_ sender: UIButton) {
        leftOperand = Double(num)!
        num = ""
        op = "/"
        hasDecimal = false;
    }
    @IBAction func multiplication(_ sender: UIButton) {
        leftOperand = Double(num)!
        num = ""
        op = "x"
        hasDecimal = false;
    }
    @IBAction func subtraction(_ sender: UIButton) {
        leftOperand = Double(num)!
        num = ""
        op = "-"
        hasDecimal = false;
    }
    @IBAction func addition(_ sender: UIButton) {
        leftOperand = Double(num)!
        num = ""
        op = "+"
        hasDecimal = false;
    }
    @IBAction func decimalButton(_ sender: Any) {
        if (hasDecimal == false) {
            num += "."
            hasDecimal = true;
        }
    }
    @IBAction func equals(_ sender: Any) {
        rightOperand = Double(num)!
        switch op {
        case "/":
            ans = leftOperand / rightOperand
            topLabel.text = "\(ans)"
        case "x":
            ans = leftOperand * rightOperand
            topLabel.text = "\(ans)"
        case "+":
            ans = leftOperand + rightOperand
            topLabel.text = "\(ans)"
        case "-":
            ans = leftOperand - rightOperand
            topLabel.text = "\(ans)"
        default:
            topLabel.text = "send help"
        }
    }
}

