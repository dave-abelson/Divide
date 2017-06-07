//
//  GameOverScene.swift
//  Divide
//
//  Created by David Abelson on 5/23/17.
//  Copyright © 2017 David Abelson. All rights reserved.
//

import SpriteKit
// the size gets all messed up
class GameOverScene: SKScene {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(size: CGSize) {
        super.init(size: size)
        
        self.backgroundColor = SKColor.black
        let message = "Game Over"
        
        let label = SKLabelNode(fontNamed: "Optima-ExtraBlack")
        label.text = message
        label.fontColor = SKColor.white
        label.position = CGPoint(x: frame.midX, y: frame.midY)
        addChild(label)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let transition = SKTransition.fade(withDuration: 0.5)
        let gameScene = GameScene(size: frame.size)
        gameScene.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        self.view?.presentScene(gameScene, transition: transition)
    }
}
