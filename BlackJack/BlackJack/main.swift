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

tiffanyBlack.newGame()

//let hitPlayerr = tiffanyBlack.hitMe()

let stringCard = Card.stringify

//var tiffCard = tiffanyBlack.player.cards


//let hitPlayerr = tiffanyBlack.hitMe()
    
    print("WELCOME TO BLACKJACK!!!!")
    sleep(2)
    print("Would you like to play? please type in \"yes\" or \"no\".")
    
var userStartsGame = readLine() ?? ""
    
    if userStartsGame.uppercased().lowercased() == "yes"{
        
        print("What is your name ?")
        
        let userNameInput = readLine() ?? ""
        
        tiffanyBlack.player.playerName.append(contentsOf: userNameInput)
 print("Awesome \(userNameInput)! \(hitOrPassStatement)")
        
        repeat {
        
repeat {
    
     let userStartPlaying = readLine() ?? ""
    
    if userStartPlaying.uppercased().lowercased() == "hit" {
        
        let _ = tiffanyBlack.hitMe()
        
        print(tiffanyBlack.player.cards.map{ $0.stringify() })
        
            } else if userStartPlaying.uppercased().lowercased() == "pass" {
       
        print("You're Score is..... \(tiffanyBlack.gameStatus())")
        tiffanyBlack.computerVsPlayer()
        break
        }
    
} while gameOver == false
        
        print("Would you Like to play again?")
        
        let userStartsGameAgain = readLine() ?? ""
        
        if userStartsGameAgain == "yes" {
gameOver = false
        } else {
            gameOver = true
        }

        }   while gameOver == false
        
            } else if userStartsGame.uppercased().lowercased() == "no"{
    print("Thanks for playing! Have a great day!")
    gameOver = true
    
}
