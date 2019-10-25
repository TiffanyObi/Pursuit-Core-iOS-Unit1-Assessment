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
        return Int.random(in: 17...21)
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
     
    }
        
   /* func stopHits() -> () {
        let stoppHitss = computerVsPlayer()
        return stoppHitss
        }*/
    
    func hitMe()-> Card? {
        
        deck = deck.shuffled()
    
        player.cards.append(deck.randomElement() ?? Card(suit: Suit.diamond, value: 10, isFaceCard: true, face: FaceCard.king))
        
        print(gameStatus())
        
        for card in player.cards {
            print(card.stringify())
        }
        return deck.popLast()
    }
        
    func computerVsPlayer(){
        
        if randomComputerScore > player.score {
            print ("Sorry! You Lost 😭")
        } else if randomComputerScore < player.score {
                print("🔥YOU'RE 👏🏾 A 👏🏾 FREAKIN'👏🏾 ROCKSTAR! 🔥")
        } else {
            print(" 💀 IT'S A TIE 🤡 ")
        }
    }
    
    
    func gameStatus() -> Int {
       
        
        player.score += deck.popLast()?.value ?? 0
        
        if player.score < 20 {
            print ("Hit or Pass")
        } else if player.score == 21 {
            print ("BOOM!!! BLACK JACK ! ")
        } else if player.score > 21 {
            print("Beat it BUSTER!!!! Haha, get it? That's a BUST")
        }
        
        return player.score
    }
    
}
let hitPlayerr = tiffanyBlack.hitMe()

let stringCard = Card.stringify

var tiffCard = tiffanyBlack.player.cards
