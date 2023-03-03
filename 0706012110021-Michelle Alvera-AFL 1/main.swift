//
//  main.swift
//  0706012110021-Michelle Alvera-AFL 1
//
//  Created by MacBook Pro on 28/02/23.
//

import Foundation
//Opening screen
var userInput: String = ""

print("Welcome to the world of magic! 🧙‍♂️🧌")
print("\n\nYou have been chosen to embark on an epic journey as a young wizard on the math of becoming master of the arcane arts. Your adventures will take you through forests 🌲, mountains ⛰️, and dungeons 🏰, where you will face challenges, make allies, and fight enemies.")
print("\n\nPress [return] to continue: ")
userInput = readLine()!
//
//print("User input: \(userInput)")

//Welcoming screen
var userName: String = ""

print("May I know your name, a young wizard? ")
userName = readLine()!

print("Nice to meet you \(userName)!")

//Journey screen
var journeyInput: String = ""
var hp = 100, mp = 50, potion = 10, elixir = 5

print("From here, you can ...")
print("\n\n[C]heck your health and stats \n[H]eal your wounds with potion")
print("\n\n... or choose where you want to go")
print("\n\n[F]orest of Troll 🧌\n[M]ountain of Golem🗿\n[Q]uit game")
print("\n\nYour choice? ")
journeyInput = readLine()!

//Player stats screen
var statsReturn: String = ""

print("Player name: \(userName)")
print("\n\nHP: \(hp)/100\nMP: \(mp)/50")
print("\n\nMagic:\n- Physical Attack. No mana required. Deal 5pt of damage.\n- Meteor. Use 15pt of MP. Deal 50pt of damage.\n- Shield. Use 10pt of MP. Block enemy's attack for 1 turn.")
print("\n\nItems:\n- Potion x\(potion). Heal 20pt of your HP.\n- Elixir x\(elixir). Add 10pt to your MP.")
print("\n\nPress [return] to go back: ")
statsReturn = readLine()!

//Heal wound screen
print("Your HP is \(hp).\nYou have \(potion) Potion(s).")
print("\n\nAre you sure to use 1 potion to heal your wound? [Y/N] ")
var healWound: String = readLine()!
while healWound != "y" || healWound != "n"{
    switch healWound.lowercased() {
    case "y":
        hp += 20
        potion -= 1
        print("\n\nYour HP is now: \(hp)\nYou have \(potion) potion(s) left.")
        print("nStill want to use 1 potion to heal wound again? [Y/N] ")
        healWound = readLine()!
    case "n":
        print("back")
        //return to journey screen
    default:
        print("loop")
        //loop
    }
}

//forest of troll screen
var fotChoice: String = ""
var tHP = 1000
print("As you enter the forest, you feel a sense of unease wash over you.\nSuddenly, you hear the sound of twigs snapping behind you. You quickly spin around, and find a Troll🧌 emerging from the shadows.")
print("\n\n🧌Name: Troll x1\n🧌Health: \(tHP)")
print("\n\nChoose your action:\n[1] Physical Attack. No mana required. Deal 5pt of damage.\n[2] Meteor. use 15pt of MP. Deal 50pt of damage.\n[3] Shield. Use 10pt of MP. Block enemy’s attack in 1 turn.\n\n[4] Use Potion to heal wound.\n[5] Scan enemy’s vital.\n[6] Flee from battle.")
print("Your choice? ")
fotChoice = readLine()!

//mountain of golem
var mogChoice: String = ""
var gHP = 1000
print("As you make your way through the rugged mountain terrain ⛰️, you can feel the chill of wind biting at your skin. Suddenly, you hear a sound that makes you freeze in your tracks. That’s when you see it - a massive, snarling Golem🗿 emerging from the shadows.")
print("\n\n🗿Name: Golem x1\n🗿Health: \(gHP)")
print("\n\nChoose your action:\n[1] Physical Attack. No mana required. Deal 5pt of damage.\n[2] Meteor. use 15pt of MP. Deal 50pt of damage.\n[3] Shield. Use 10pt of MP. Block enemy’s attack in 1 turn.\n\n[4] Use Potion to heal wound.\n[5] Scan enemy’s vital.\n[6] Flee from battle.")
print("Your choice? ")
mogChoice = readLine()!

//flee from battle
var fleeReturn: String = ""
print("You feel that if you don’t escape soon, you won’t be able to continue the fight.\nYou look around frantically, searching for a way out. You sprint towards the exit, your heart pounding in your chest.\n\nYou’re safe for now.")
print("\n\nPress [return] to go back: ")
fleeReturn = readLine()!
