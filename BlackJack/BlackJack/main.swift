//
//  main.swift
//  BlackJack
//
//  Created by Alex Paul on 10/15/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

// TODO: remove these lines after you have added the Suit and FaceCard enums as per the assessment README
//print("There are \(Card.newDeck(aceValue: 1).count) in a deck of cards")
// There are 52 in a deck of cards


var gameOver:Bool = false
var hitOrPassStatement = """
Choose Wisely. Type in "Hit" or "Pass" to Start!
"""
var tiffanyBlack = Game.init(player: Player(score: 0, cards: [], playerName: ""), hitPlayer: true)


repeat {
    
    print("WELCOME TO BLACKJACK!!!!")
    sleep(2)
    print("Would you like to play? please type in \"yes\" or \"no\".")
    
    let userStartsGame = readLine() ?? ""
    
    if userStartsGame.uppercased().lowercased() == "yes"{
        
        print("What is your name ?")
        
        let userNameInput = readLine() ?? ""
        
        tiffanyBlack.player.playerName.append(contentsOf: userNameInput)
        
        print("Awesome \(userNameInput)! \(hitOrPassStatement)")
    
     let userStartPlaying = readLine() ?? ""
    
    if userStartPlaying.uppercased().lowercased() == "hit" {
            tiffanyBlack.hitPlayer = true
            
            if tiffanyBlack.hitPlayer == true {
                
                print(tiffanyBlack.hitMe() ?? Card(suit: Suit.spade, value: 10, isFaceCard: true, face: FaceCard.queen))
                }
            }else if userStartPlaying.uppercased().lowercased() == "pass" {
            
        print("You're Score is..... \(tiffanyBlack.gameStatus())")
    
        }
    }
 if userStartsGame.uppercased().lowercased() == "no"{
        print("Thanks for playing! Have a great day!")
        gameOver = false
        
    }
    
    
} while
        gameOver

