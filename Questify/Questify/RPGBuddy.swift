//
//  RPGBuddy.swift
//  Questify
//
//  Created by Axesniper on 2/11/20.
//  Copyright © 2020 Questify Org. All rights reserved.
//

import Foundation
import SpriteKit

class RPGBuddy: SKSpriteNode {
    
    var experience = 0
    var level = 0
    
    init(){
    let texture = SKTexture(imageNamed: "Buddy")
    super.init(texture: texture, color: .clear, size: texture.size())
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func increaseExperience (numberOfTasks: Int) {
        experience += 100 * numberOfTasks
        levelUp()
    }
    
    func levelUp (){
        let requiredExperience = level * 500
        if experience >= requiredExperience {
            level += 1
            experience -= requiredExperience
        }
    }
    
    func changeImage (imageName: String){
        self.texture = SKTexture(imageNamed: imageName)
    }
    
    
}

