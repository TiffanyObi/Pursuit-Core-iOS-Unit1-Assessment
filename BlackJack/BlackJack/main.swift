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

let tiffanyBlack = Game(player: Player(score: 0, cards: Card.newDeck(aceValue: 11), playerName: "Tiffany"), hitPlayer: true)
    
let blackJackStart = tiffanyBlack.newGame()
var gameOver:Bool = false
var hitOrPassStatement = """
Choose Wisely
1. Hit
2. Pass
"""
var userStartsGame = readLine() ?? ""

repeat {
    print("WELCOME TO BLACKJACK!!!!")
    sleep(2)
    print("Would you like to play? please type in \"yes\" or \"no\".")
    
    userStartsGame = readLine() ?? ""
    
    if userStartsGame.uppercased().lowercased() == "yes"{
        print(hitOrPassStatement)
        let userHitOrPass = readLine() ?? ""
        
        if userHitOrPass == "1"{
            tiffanyBlack.hitMe(blackJackStart)
        }
        
  } else if userStartsGame.uppercased().lowercased() == "no"{
        print("Thanks for playing! Have a great day!")
        gameOver = false
        
    }
    
    
} while
gameOver

