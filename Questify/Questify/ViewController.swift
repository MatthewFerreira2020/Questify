//
//  ViewController.swift
//  Questify
//
//  Created by Samuel Nicolas on 2020-01-21.
//  Copyright © 2020 Questify Org. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Successful Load")
              
        
              //Makes gesture recognizers for all of the directions of swipes, if one is not needed it can be removed. -Jacob
              let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(handleGesture))
              swipeLeft.direction = .left
              self.view.addGestureRecognizer(swipeLeft)

              let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(handleGesture))
              swipeRight.direction = .right
              self.view.addGestureRecognizer(swipeRight)

              let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(handleGesture))
              swipeUp.direction = .up
              self.view.addGestureRecognizer(swipeUp)

              let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(handleGesture))
              swipeDown.direction = .down
              self.view.addGestureRecognizer(swipeDown)

    }
    //Handler for the functionality of swipes on this ViewController -Jacob
       @objc func handleGesture(gesture: UISwipeGestureRecognizer) -> Void {
              if gesture.direction == .right {
                   print("Swipe Right")
               changeView(ViewToLoadID: "CurrentTasksToAddTasks", CurrentView: self)
              }
              else if gesture.direction == .left {
                   print("Swipe Left")
               changeView(ViewToLoadID: "CurrentTasksToRPGBuddy", CurrentView: self)
              }
              else if gesture.direction == .up {
                   print("Swipe Up")
              }
              else if gesture.direction == .down {
                   print("Swipe Down")
              }
    }
}

