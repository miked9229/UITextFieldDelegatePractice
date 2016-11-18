//
//  ViewController.swift
//  UITextFieldDelegatePractice
//
//  Created by Michael Doroff on 11/14/16.
//  Copyright © 2016 Michael Doroff. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
   
    // Declares the text field outlets
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    
    //Instnatiates the classes for the classes that conform to the
    //UITextFieldDelegate protocol
    let zipcodedelegate = ZipCodeDelegate()
    let cashdelegate = CashTextFieldDelegate()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    textField1.delegate = zipcodedelegate
    textField2.delegate = cashdelegate
    
    
    }



}

