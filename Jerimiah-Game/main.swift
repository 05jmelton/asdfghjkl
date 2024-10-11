//
//  main.swift
//  Jerimiah-Game
//
//  Created by Student on 10/11/24.
//

import Foundation
func playNumberGame(){
    print("Welcome to the Number Game")
    print("I am thinking of a number 1 out of 100 can you guess it")
let targetNumber = Int.random(in: 1...100)
var tries = 0
    
    while true {
        print("Enter your guess")
        if let input = readLine(), let guess = Int(input) {
                   tries += 1
                   
                   if guess < targetNumber {
                       print("Too low! Try again.")
                   } else if guess > targetNumber {
                       print("Too high! Try again.")
                   } else {
                       print("Congratulations! You guessed the number \(targetNumber) in \(tries) tries.")
                       break
                   }
               } else {
                   print("Invalid input. Please enter a valid number.")
               }
           }
    print("Do you want to play again? (yes/no)")
        if let playAgain = readLine()?.lowercased(), playAgain == "yes" {
            playNumberGame()
        } else {
            print("Thanks for playing!")
        }
    }
playNumberGame()

