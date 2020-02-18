//
//  ViewController.swift
//  Questify
//
//  Created by Samuel Nicolas on 2020-01-21.
//  Copyright © 2020 Questify Org. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    var numberOfClicks: Int = 0
    var buttonFunctions = ButtonFunctions();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        
        numberOfClicks = buttonFunctions.IncrementLabelNumber(label: self.label)
        debugPrint(numberOfClicks)
    }
    
    
}

