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
    
    func newGame() ->([Card]) {
   let newDeckk = Card.newDeck(aceValue: 11)
        return newDeckk
    }
    
    
    func stopHits() -> () {
        let stoppHitss = computerVsPlayer()
        return stoppHitss
        }
    
    func hitMe()-> Card {
        var playerCards = player.cards
        let card = deck.randomElement()
        playerCards.append(card ?? Card(suit: Suit.heart, value: 10, isFaceCard: true, face:FaceCard.queen ))
        
        
        return playerCards.popLast() ?? Card(suit: Suit.heart, value: 10, isFaceCard: true, face: FaceCard.queen)
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
    
    
    func gameStatus(playerCard: Card) -> Int {
        var currentScore = player.score
        
        currentScore += hitMe().value
        
        return currentScore
    }
    
}
