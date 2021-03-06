//
//  PlayerObject.swift
//  Space Invaders2
//
//  Created by 罗懿 on 15/11/5.
//  Copyright © 2015年 罗懿. All rights reserved.
//

import Foundation
import UIKit
class PlayerObject: NSObject {
    var gameView:UIView=UIView()
    var playerRect:CGRect=CGRect()
    var playerImage:UIImage=UIImage(named: "ship.png")!
    var playerView:UIImageView=UIImageView()
    var playerBullet=PlayerBullet()
    
    func initPlayer(gameView:UIView)->PlayerObject{
        self.gameView=gameView
        self.playerView.image=self.playerImage
        self.playerRect=CGRectMake(50, 400, 32, 32)
        self.playerView.frame=self.playerRect
        self.gameView.addSubview(self.playerView)
        return self
        
    }
    func getPlayerView()->UIView{
        return self.playerView
        
    }
    func movePlayerRight(){
        let screenRect:CGRect=UIScreen.mainScreen().bounds
        if(self.playerRect.origin.x<=screenRect.size.width
            - self.playerRect.size.width - 10){
            self.playerRect = CGRectOffset(self.playerRect, 3, 0);
            self.playerView.frame = self.playerRect;
        }

    }
    func movePlayerLeft(){
        if(self.playerRect.origin.x >= 10){
            self.playerRect = CGRectOffset(self.playerRect, -3, 0);
            self.playerView.frame = self.playerRect;
        }

    }
    func fireBullet(){
      
        playerBullet.fireBullet(self.gameView, playerView: self.playerView)
        
      
    }
    
}
