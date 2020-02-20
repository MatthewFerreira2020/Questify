//
//  Task.swift
//  Questify
//
//  Created by Jacob Saur on 2020-02-20.
//  Copyright © 2020 Questify Org. All rights reserved.
//
import UIKit
import Foundation

class TaskList {
    
    var Tasks: [Task] = []
    
    init(){
        
        //Stuff that should happen when you create a tasklist
       
    }
    
    func AddTask (newTask: Task){
        
        Tasks.insert(newTask, at: Tasks.endIndex)
    }
   //Need to figure out how to remove
    func RemoveTask (removeTaskIndex: Int){
        
        Tasks.remove(at: removeTaskIndex)
    }
    func RemoveLast(){
        
        Tasks.removeLast()
    }
    func RemoveFirst(){
        
        Tasks.removeFirst()
    }
    
}

class Task {
    
    
    var name = String()
    var description = String()
    var time = Int()
    var numberOfTimesToComplete = Int()
    var numberOfTimesCompleted = Int()
    
    
    init(Name: String, Description: String, Time: Int, NumberOfTimes: Int){
        
        name = Name
        description = Description
        time = Time // Needs a real time var later
        numberOfTimesToComplete = NumberOfTimes
        numberOfTimesCompleted = 0

        //Needs GPS data as well
            
        // adds one more completion to the task and returns true if it was completed
    }
    
    func TaskCompleted() -> Bool{
        
        numberOfTimesCompleted += 1
        
        if (numberOfTimesToComplete <= numberOfTimesCompleted){
            
            return true
        }
        return false
    }
    
}
