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
        
        //print("deck has ", deck.count)
        
        let shuffledDeck = deck.shuffled()
        let randomCard = shuffledDeck.randomElement()
        
      player.cards.append(randomCard ?? Card(suit: Suit.diamond, value: 10, isFaceCard: true, face: FaceCard.king))
        
        let randomCardValue = randomCard?.value ?? 0
        player.score += randomCardValue
        
        print("Your score is \(gameStatus())")
        print("Would You like To Hit or Pass?")
        return deck.popLast()
    }
        
    func computerVsPlayer(){
        
        if randomComputerScore > player.score {
            print(randomComputerScore)
            print ("Sorry! You Lost 😭")
        } else if randomComputerScore < player.score {
                print(randomComputerScore)
                print("🔥YOU'RE 👏🏾 A 👏🏾 FREAKIN'👏🏾 ROCKSTAR! 🔥")
        } else {
            print(randomComputerScore)
            print(" 💀 IT'S A TIE 🤡 ")
        }
    }
    
    
    func gameStatus() -> Int {
        
      
         
        if player.score < 20 {
            
        } else if player.score == 21 {
            
            print ("BOOM!!! BLACK JACK ! ")
            gameOver = true
           
            
        } else if player.score > 21 {
            
            print("Beat it BUSTER!!!! Haha, get it? That's a BUST")
            gameOver = true
            
        }
        
        return player.score
    }
    
}
