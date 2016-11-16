//
//  ZipCodeDelegate.swift
//  UITextFieldDelegatePractice
//
//  Created by Michael Doroff on 11/14/16.
//  Copyright © 2016 Michael Doroff. All rights reserved.
//

import Foundation
import UIKit

class ZipCodeDelegate: NSObject, UITextFieldDelegate {
    /* Class that is used as a UITextFieldDelegate for the Zip Code
       Text field. */
    
    
    // Declares the digit character set
    let numberCharacters = NSCharacterSet.decimalDigits.inverted
    
    // Declares a variable to downcast the NSString to String
    var downcastString: String = ""
    
    // Changes the character string in the textfield
    func textField(_ textField: UITextField,
                   shouldChangeCharactersIn range: NSRange,
                   replacementString string: String) -> Bool {
        
        
      
        // Casts the textField text as an NSString
        var newText = textField.text! as NSString

    
        // Replaces the NewText if the newText is true
        newText = newText.replacingCharacters(in: range, with: string) as NSString
        
      downcastString = newText as String
        
        
        // Returns Bool if textfield entry is acceptable.
        if newText.length <= 5 && (downcastString.rangeOfCharacter(from: numberCharacters)) == nil  {
            return true
        } else {
            return false
        }
        
    }
    

}
