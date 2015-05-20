//
//  ViewController.swift
//  Calculator
//
//  Created by Tim Gamble on 4/11/15.
//  Copyright (c) 2015 Tim Gamble. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Screen: UILabel?
    
    var operation = ""
    var firstNumber:Float = 0
    var secondNumber:Float = 0
    var result:Float = 0
    var isTypingNumber = false
    
    @IBAction func number(sender: AnyObject)
    {
        var number = sender.currentTitle!!
        if isTypingNumber == true
        {
           Screen!.text = Screen!.text! + (number)
        }
        else
        {
            Screen!.text = number
        }
        isTypingNumber = true
    }
    
    @IBAction func operation(sender: AnyObject)
    {
        isTypingNumber = false
        var conversion1 = (Screen!.text! as NSString).floatValue
        firstNumber = conversion1
        operation = sender.currentTitle!!
        if operation == "%"
        {
            result = firstNumber/100.0
        }
        if operation == "+/-"
        {
            result = -firstNumber
        }
        if operation == "."
        {
            //not sure what to write here just yet
        }
        Screen?.text = "\(result)"
    }
    
    @IBAction func equals(sender: AnyObject)
    {
        var conversion2 = (Screen!.text! as NSString).floatValue
        secondNumber = conversion2
        if operation == "÷"
        {
            result = firstNumber / secondNumber
        }
        else if operation == "-"
        {
            result = firstNumber - secondNumber
        }
        else if operation == "x"
        {
            result = firstNumber * secondNumber
        }
        else
        {
            result = firstNumber + secondNumber
        }
        Screen?.text = "\(result)"
    }
    
    @IBAction func clear(sender: AnyObject)
    {
        firstNumber = 0.0
        secondNumber = 0.0
        result = 0.0
        Screen?.text = "0.0"
        isTypingNumber = false
        operation = ""
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

