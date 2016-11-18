//
//  CashTextFieldDelegate.swift
//  UITextFieldDelegatePractice
//
//  Created by Michael Doroff on 11/15/16.
//  Copyright © 2016 Michael Doroff. All rights reserved.
//

import Foundation
import UIKit

class CashTextFieldDelegate: NSObject, UITextFieldDelegate {

    var number: String? = ""
    var money: Int = 0
    let formatter = NumberFormatter()
    var newmoney: NSNumber = 0
    var finalString: String = ""
    var replacementString: String = ""
    
   
    func textField(_ textField: UITextField,
                   shouldChangeCharactersIn range: NSRange,
                   replacementString string: String) -> Bool {
        
        formatter.numberStyle = .currency
        
        
        var newText = textField.text! as NSString
        
        
 
        
        
      
        replacementString = formatter.string(from: NSNumber(value: Int(string as String)!))!

        print(replacementString)
        
         newText = (newText.replacingCharacters(in: range, with: replacementString))  as NSString
        
        print(newText)
        
        
        
        //money = Int(newText as String)! / 100
        
        //print(money)
    
        


        //newmoney = NSNumber(value: money / 100)
    

       // finalString = formatter.string(from: newmoney)! as String

       // newText = (newText.replacingCharacters(in: range, with: finalString))  as NSString
        
     
    
        
        return true
    
    }
    
    
}
