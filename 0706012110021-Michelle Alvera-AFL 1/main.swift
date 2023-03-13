//
//  main.swift
//  0706012110021-Michelle Alvera-AFL 1
//
//  Created by MacBook Pro on 28/02/23.
//

import Foundation
//Opening screen
print("Welcome to the world of magic! 🧙‍♂️🧌")
print("\n\nYou have been chosen to embark on an epic journey as a young wizard on the math of becoming master of the arcane arts. Your adventures will take you through forests 🌲, mountains ⛰️, and dungeons 🏰, where you will face challenges, make allies, and fight enemies.")
print("\n\nPress [return] to continue: ")
let userInput = String(readLine()!)
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
var userStat: [String:Int] = ["hp":100, "mp":50, "potion":10, "elixir":5]

repeat {
print("From here, you can ...")
print("\n\n[C]heck your health and stats \n[H]eal your wounds with potion")
print("\n\n... or choose where you want to go")
print("\n\n[F]orest of Troll 🧌\n[M]ountain of Golem🗿\n[Q]uit game")
print("\n\nYour choice? ")
journeyInput = readLine()!
journeyInput = journeyInput.lowercased()
    switch journeyInput {
    case "c":
        //Player stats screen
        var statsReturn: String = ""
        repeat {
            print("Player name: \(userName)")
            print("\n\nHP: \(userStat["hp"])/100\nMP: \(userStat["mp"])/50")
            print("\n\nMagic:\n- Physical Attack. No mana required. Deal 5pt of damage.\n- Meteor. Use 15pt of MP. Deal 50pt of damage.\n- Shield. Use 10pt of MP. Block enemy's attack for 1 turn.")
            print("\n\nItems:\n- Potion x\(userStat["potion"]). Heal 20pt of your HP.\n- Elixir x\(userStat["elixir"]). Add 10pt to your MP.")
            print("\n\nPress [return] to go back: ")
            statsReturn = readLine()!
            if statsReturn == "return" {
                print("Going back to journey screen")
            } else {
                print("loop")
            }
        } while statsReturn != "return"
    case "h":
        //Heal wound screen
        var healWound: String = ""
        repeat {
            print("Your HP is \(userStat["hp"]).\nYou have \(userStat["potion"]) Potion(s).")
            print("\n\nAre you sure to use 1 potion to heal your wound? [Y/N] ")
            healWound = readLine()!
            healWound = healWound.lowercased()
            switch healWound {
            case "y":
                userStat["hp"]! += 20
                userStat["potion"]! -= 1
                print("\n\nYour HP is now: \(userStat["hp"])\nYou have \(userStat["potion"]) potion(s) left.")
                print("nStill want to use 1 potion to heal wound again? [Y/N] ")
                healWound = readLine()!
            default:
                print("Please input [Y/N]\n")
                //loop
            }
        } while healWound != "y" || healWound != "n"
    case "f":
        //forest of troll screen
        var fotChoice: String = ""
        var tHP = 1000
        repeat {
            print("As you enter the forest, you feel a sense of unease wash over you.\nSuddenly, you hear the sound of twigs snapping behind you. You quickly spin around, and find a Troll🧌 emerging from the shadows.")
            print("\n\n🧌Name: Troll x1\n🧌Health: \(tHP)")
            print("\n\nChoose your action:\n[1] Physical Attack. No mana required. Deal 5pt of damage.\n[2] Meteor. use 15pt of MP. Deal 50pt of damage.\n[3] Shield. Use 10pt of MP. Block enemy’s attack in 1 turn.\n\n[4] Use Potion to heal wound.\n[5] Scan enemy’s vital.\n[6] Flee from battle.")
            print("Your choice? ")
            fotChoice = readLine()!
            fotChoice = fotChoice.lowercased()
            
            switch fotChoice {
            case "1":
                print("Physical Attack")
            case "2":
                print("Meteor")
            case "3":
                print("Shield")
            default:
                print("Please choose between 1 to 6")
            }
        } while fotChoice != "1" || fotChoice != "2" || fotChoice != "3" || fotChoice != "4" || fotChoice
        != "5" || fotChoice != "6"
        
    case "m":
        //mountain of golem
        var mogChoice: String = ""
        var gHP = 1000
        repeat{
            print("As you make your way through the rugged mountain terrain ⛰️, you can feel the chill of wind biting at your skin. Suddenly, you hear a sound that makes you freeze in your tracks. That’s when you see it - a massive, snarling Golem🗿 emerging from the shadows.")
            print("\n\n🗿Name: Golem x1\n🗿Health: \(gHP)")
            print("\n\nChoose your action:\n[1] Physical Attack. No mana required. Deal 5pt of damage.\n[2] Meteor. use 15pt of MP. Deal 50pt of damage.\n[3] Shield. Use 10pt of MP. Block enemy’s attack in 1 turn.\n\n[4] Use Potion to heal wound.\n[5] Scan enemy’s vital.\n[6] Flee from battle.")
            print("Your choice? ")
            mogChoice = readLine()!
            
            var mogChoice: String = ""
            var gHP = 1000
            repeat {
                print("As you enter the forest, you feel a sense of unease wash over you.\nSuddenly, you hear the sound of twigs snapping behind you. You quickly spin around, and find a Troll🧌 emerging from the shadows.")
                print("\n\n🧌Name: Troll x1\n🧌Health: \(gHP)")
                print("\n\nChoose your action:\n[1] Physical Attack. No mana required. Deal 5pt of damage.\n[2] Meteor. use 15pt of MP. Deal 50pt of damage.\n[3] Shield. Use 10pt of MP. Block enemy’s attack in 1 turn.\n\n[4] Use Potion to heal wound.\n[5] Scan enemy’s vital.\n[6] Flee from battle.")
                print("Your choice? ")
                mogChoice = readLine()!
                mogChoice = mogChoice.lowercased()
                
                switch mogChoice {
                case "1":
                    print("Physical Attack")
                case "2":
                    print("Meteor")
                case "3":
                    print("Shield")
                case "4":
                    print("Potion")
                case "5":
                    print("Scan")
                case "6":
                    //flee from battle
                    var fleeReturn: String = ""
                    print("You feel that if you don’t escape soon, you won’t be able to continue the fight.\nYou look around frantically, searching for a way out. You sprint towards the exit, your heart pounding in your chest.\n\nYou’re safe for now.")
                    print("\n\nPress [return] to go back: ")
                    fleeReturn = readLine()!
                default:
                    print("loop")
                }
            } while mogChoice != "1" || mogChoice != "2" || mogChoice != "3" || mogChoice != "4" || mogChoice
            != "5" || mogChoice != "6"
        } while mogChoice != "6"
    case "q":
        print("Thank you for playing, see you soon young wizard!")
    default:
        print("Try again mate")
    }
} while journeyInput != "q" || journeyInput != "c" || journeyInput != "h" || journeyInput != "f" || journeyInput != "m"
