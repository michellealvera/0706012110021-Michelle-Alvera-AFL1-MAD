//
//  main.swift
//  0706012110021-Michelle Alvera-AFL 1
//
//  Created by MacBook Pro on 28/02/23.
//

import Foundation
//Opening screen
var userInput: String = ""
var playAgain: String = ""

//to check if player win, lose, or draw when player, enemy, or both has 0 HP
func winState(monstersHP: inout Int){
    repeat{
        if (userStat["hp"]! > 0 && monstersHP == 0){
            print("Congratulations, \(userName). You defeated the enemy.")
        } else if (userStat["hp"]! == 0 && monstersHP > 0){
            print("The enemy defeated you. You Lose!")
            print("Play again? [Y/N] ")
            playAgain = readLine()!
            playAgain = playAgain.lowercased()
            
            if (playAgain == "y") {
                print("\nYou just got another chance!")
            } else if (playAgain == "n"){
                print("Thanks for playing. Toodles!")
                exit(0)
            } else {
                print("Please input [Y/N]")
            }
        } else if (userStat["hp"] == 0 && monstersHP == 0){
            print("\nDraw!")
            print("Play again? [Y/N] ")
            playAgain = readLine()!
            playAgain = playAgain.lowercased()
            
            if (playAgain == "y") {
                print("\nYou just got another chance!")
            } else if (playAgain == "n"){
                print("Thanks for playing. Toodles!")
                exit(0)
            } else {
                print("Please input [Y/N]")
            }
        } else {
            break
        }
    } while playAgain != "y" || playAgain != "n"
}

repeat{
    print("Welcome to the world of magic! 🧙‍♂️🧌")
    print("\n\nYou have been chosen to embark on an epic journey as a young wizard on the math of becoming master of the arcane arts. Your adventures will take you through forests 🌲, mountains ⛰️, and dungeons 🏰, where you will face challenges, make allies, and fight enemies.")
    print("\n\nPress [return] to continue: ")
    userInput = readLine()!
    if (userInput == "") {
        break
    }
} while userInput != ""
//
//print("User input: \(userInput)")
//let menuCount = menuList.count + 1
//menuList["...\(menuCount)"] = input

//func checkMenu(key: String)->String{
//for (keyCheck, _val) in menuList{
//print("\(key), \(keyCheck)")
//if key == keyCheck {
//return _name
//}
//}
//return "0"
//}
//Welcoming screen
print("May I know your name, a young wizard? ")
let userName = (readLine()!)

print("Nice to meet you \(userName)!")

//Journey screen
var journeyInput: String = ""

repeat {
print("\nFrom here, you can ...")
print("\n\n[C]heck your health and stats \n[H]eal your wounds with potion")
print("\n\n... or choose where you want to go")
print("\n\n[F]orest of Troll 🧌\n[M]ountain of Golem🗿\n[Q]uit game")
print("\n\nYour choice? ")
journeyInput = readLine()!
journeyInput = journeyInput.lowercased()
    switch journeyInput {
    case "c":
        //Player stats screen
        checkStat(playerName: userName)
    case "h":
        //Heal wound screen
        healWound()
    case "f":
        //forest of troll screen
        var fotChoice: String = ""
        var tHP = 1000
        repeat {
            print("As you enter the forest, you feel a sense of unease wash over you.\nSuddenly, you hear the sound of twigs snapping behind you. You quickly spin around, and find a Troll🧌 emerging from the shadows.")
            print("\n\n🧌Name: Troll x1\n🧌Health: \(tHP)")
            action()
            fotChoice = readLine()!
            fotChoice = fotChoice.lowercased()
            
            switch fotChoice {
            case "1":
                physicalAttack(monsterHP: &tHP)
            case "2":
                meteor(monsterHP: &tHP)
            case "3":
                shield()
            case "4":
                healWound()
            case "5":
                print("\nTroll's Health: \(tHP)")
            case "6":
                flee()
            case "q":
                quitGame()
            default:
                print("Please choose between 1 to 6")
            }
        } while tHP > 0 || fotChoice != "q" || userStat["hp"]! > 0 || playAgain == "y" || playAgain == "n"
        
    case "m":
        //mountain of golem
        var mogChoice: String = ""
        var gHP = 1000
        print("As you make your way through the rugged mountain terrain ⛰️, you can feel the chill of wind biting at your skin. Suddenly, you hear a sound that makes you freeze in your tracks. That’s when you see it - a massive, snarling Golem🗿 emerging from the shadows.")
        repeat{
            print("\n\n🗿Name: Golem x1\n🗿Health: \(gHP)")
            action()
            mogChoice = readLine()!
            
            var mogChoice: String = ""
            mogChoice = mogChoice.lowercased()
                switch mogChoice {
                case "1":
                    physicalAttack(monsterHP: &gHP)
                case "2":
                    meteor(monsterHP: &gHP)
                case "3":
                    shield()
                case "4":
                    healWound()
                case "5":
                    print("\nGolem's Health: \(gHP)")
                case "6":
                    flee()
                case "q":
                    quitGame()
                default:
                    print("Please choose between 1 to 6")
                }
            } while gHP > 0 || mogChoice != "q" || userStat["hp"]! > 0 || playAgain != "y" || playAgain == "n"
    case "q":
        //quit game
        quitGame()
    default:
        //if user inputs other than "c", "h", "f", "m", "q"
        print("Try again mate")
    }
} while journeyInput != "q" || playAgain == "y" || playAgain == "n"
