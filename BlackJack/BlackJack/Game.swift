//
//  Game.swift
//  BlackJack
//
//  Created by Tiffany Obi on 10/24/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

class Game {
    // MARK:properties
    
    //instance properties
    var deck = [Card]()
    var player:Player
    var hitPlayer:Bool
    
    //computed properties
    var hasMoreCards:Bool{
        return !deck.isEmpty
    }
    var randomComputerScore:Int{
        return Int()
    }
    
    init(player:Player,hitPlayer:Bool){
        self.hitPlayer = hitPlayer
        self.player = player
    }
    
    // MARK:methods
    
    func newGame() {
        
    }
    
    func stopHits(){
        
    }
    
    func computerVsPlayer(){
        
    }
    
    func gameStatus(){
        
    }
    
}
