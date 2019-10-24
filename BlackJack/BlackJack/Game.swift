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
       Card.newDeck(aceValue: 11)
        
    }
    
    
    func stopHits(){
computerVsPlayer()
        }
    
    func hitMe() {
        
    }
        
    func computerVsPlayer(){
        let cpuScore = Int.random(in: 17...21)
        if cpuScore > player.score {
            print ("Sorry! You Lost 😭")
        } else if cpuScore < player.score {
                print("🔥YOU'RE 👏🏾 A 👏🏾 FREAKIN'👏🏾 ROCKSTAR! 🔥")
        } else {
            print(" 💀 IT'S A TIE 🤡 ")
        }
    }
    
    
    func gameStatus(){
       let current = player.cards.count
    }
    
}
