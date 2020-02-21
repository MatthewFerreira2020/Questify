//
//  RPGBuddy.swift
//  Questify
//
//  Created by Axesniper on 2/18/20.
//  Copyright © 2020 Questify Org. All rights reserved.
//

import Foundation
import SpriteKit

class RPGBuddy: SKSpriteNode {
    
    var experience = 0
    var level = 0
    var requiredExperience = 0
    
    init(){
    let texture = SKTexture(imageNamed: "Buddy")
    super.init(texture: texture, color: .clear, size: texture.size())
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func taskComplete (numberOfTasks: Int) {
        experience += 100 * numberOfTasks
        levelUp()
    }
    
    func taskCompleteWithDifficulty(taskDifficulty: Int){
        experience += 25 * taskDifficulty
        levelUp()
    }
    
    func levelUp (){
        requiredExperience = (level + 1) * 500
        if experience >= requiredExperience {
            level += 1
            experience -= requiredExperience
        }
    }
    
    func changeImage (imageName: String, requiredLevel: Int){
        
        if level >= requiredLevel{
            self.texture = SKTexture(imageNamed: imageName)
        }
    }
    
    func progressToNextLevel () -> Float{
        
        var progress: Float = 0.0
        let exp = Float(experience)
        let requiredExp = Float(requiredExperience)
        
        requiredExperience = (level + 1) * 500
        progress = exp / requiredExp
        return progress
    }
    
    func getLevel () -> Int{
        return level;
    }
    
    func getExperience () -> Int{
        return experience;
    }
    
    
}

