//
//  ButtonFunctions.swift
//  Questify
//
//  Created by Jacob Saur on 2020-02-11.
//  Copyright © 2020 Questify Org. All rights reserved.
//

import Foundation
import UIKit

class ButtonFunctions{

    //Pass a number to be incremented
    func IncrementNumber(num: Int) -> Int {
    
        var newInt : Int = num
        newInt += 1
        return newInt
    }
    
    //Pass a number to be incremented
    func IncrementLabelNumber(label: UILabel) -> UILabel {
    
        var newInt: Int = 0;
        var newLabel = label
        newInt = Int(newLabel.text!) ?? 76767
       
        if(newInt == 76767) {
            return label
        }
        
        else {
            newInt += 1
            newLabel.text = String(newInt)
            return newLabel
        }
    
    func ChangeView(newView: UIView, viewController: UIViewController){
        
        // TODO: Use this data to change the current screen
    }
    
    
}
