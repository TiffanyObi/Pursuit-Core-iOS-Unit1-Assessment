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
    
    func newGame() ->() {
        deck = Card.newDeck(aceValue: 11)
        player.score = 0
        hitPlayer = true
     //let blackJackStart = tiffanyBlack.newGame()
    }
        
   /* func stopHits() -> () {
        let stoppHitss = computerVsPlayer()
        return stoppHitss
        }*/
    
    func hitMe()-> Card? {
        player.cards.append(contentsOf: deck.shuffled())
        
        return player.cards.popLast()
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
    
    
    func gameStatus(playerCard: [Card]) -> Int {
        var currentScore = player.score
        let hitMeScore = hitMe()?.value
        
        currentScore += hitMeScore ?? 0
        
        if currentScore < 20 {
            print ("Hit or Pass")
        } else if currentScore == 21 {
            print ("BOOM!!! BLACK JACK ! ")
        } else if currentScore > 21 {
            print("Beat it BUSTER!!!! Haha, get it? That's a BUST")
        }
        
        return currentScore
    }
    
}
  var tiffanyBlack = Game(player: Player(score: 0, cards: Card.newDeck(aceValue: 11), playerName: "Tiffany"), hitPlayer: true)
