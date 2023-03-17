//
//  welcoming_screen.swift
//  0706012110021-Michelle Alvera-AFL 1
//
//  Created by MacBook Pro on 03/03/23.
//

import Foundation

var userStat: [String:Int] = ["hp":100, "mp":50, "potion":10, "elixir":5]
let magics = ["- Physical Attack. No mana required. Deal 5pt of damage.","- Meteor. Use 15pt of MP. Deal 50pt of damage.","- Shield. Use 10pt of MP. Block enemy's attack for 1 turn.","- Potion x\(userStat["potion"]). Heal 20pt of your HP.","- Elixir x\(userStat["elixir"]). Add 10pt to your MP."]

func checkStat(playerName: String){
        var statsReturn: String = ""
        repeat {
            print("\nPlayer name: \(userName)")
            yourStat()
            for magic in magics {
                print("\(magic)")
            }
            print("\n\nPress [return] to go back: ")
            statsReturn = readLine()!
            if statsReturn == "" {
                print("Going back to journey screen ...")
                break
            }
        } while statsReturn != ""
}

func yourStat(){
    print("\nYour current status:")
    print("HP: \(userStat["hp"])/100\nMP: \(userStat["mp"])/50\nPotion: \(userStat["potion"])\nElixir: \(userStat["elixir"])")
}

func healWound(){
    var healWound: String = ""
    repeat {
        print("\nYour HP is \(userStat["hp"]).\nYou have \(userStat["potion"]) Potion(s).")
        print("\nAre you sure to use 1 potion to heal your wound? [Y/N] ")
        healWound = readLine()!
        healWound = healWound.lowercased()
        switch healWound {
        case "y":
            if (userStat["potion"]!>0){
                userStat["hp"]! += 20
                userStat["potion"]! -= 1
                yourStat()
                print("\nStill want to use 1 potion to heal wound again? [Y/N] ")
                healWound = readLine()!
            } else {
                print("\nYou ran out of potions!")
            }
        case "n":
            break
        default:
            print("Please input [Y/N]\n")
        }
    } while healWound != "n"
}

func physicalAttack(monsterHP: inout Int){
    if (monsterHP > 0){
        monsterHP -= 5
        print("\nYou dealt 5 damage!")
        enemyDamage(monsterssHP: &monsterHP)
    } else {
        print()
    }
    winState(monstersHP: &monsterHP)
}

func meteor(monsterHP: inout Int){
    if (monsterHP > 0){
        if (userStat["mp"]! >= 15) {
            monsterHP -= 50
            userStat["mp"]! -= 15
            print("\nYou dealt 15 damage")
            print("MP - 15")
            enemyDamage(monsterssHP: &monsterHP)
        } else {
            print("You ran out of mana!")
            yourStat()
        }
    } else {
        print()
    }
    winState(monstersHP: &monsterHP)
}

func shield(){
    if (userStat["mp"]! >= 10){
        userStat["mp"]! -= 10
        print("\n--- Enemy's turn ---")
        print("The enemy attacks you but you successfully block its attack!")
        print("MP - 10")
        yourStat()
    } else {
        print("You ran out of mana!")
        yourStat()
    }
}

func enemyDamage(monsterssHP: inout Int) {
        var damage = Int.random(in: 0..<11)
        userStat["hp"]! -= damage
        print("\n--- Enemy's turn ---")
        print("Enemy attacked you \(damage) damage")
        yourStat()
        winState(monstersHP: &monsterssHP)
    }

func flee(){
    var fleeReturn: String = ""
    repeat{
        print("You feel that if you don’t escape soon, you won’t be able to continue the fight.\nYou look around frantically, searching for a way out. You sprint towards the exit, your heart pounding in your chest.\n\nYou’re safe for now.")
        print("\n\nPress [return] to go back: ")
        fleeReturn = readLine()!
        if (fleeReturn == ""){
            break
        }
    } while fleeReturn != ""
}

func action(){
    print("\n\nChoose your action:\n[1] Physical Attack. No mana required. Deal 5pt of damage.\n[2] Meteor. use 15pt of MP. Deal 50pt of damage.\n[3] Shield. Use 10pt of MP. Block enemy’s attack in 1 turn.\n\n[4] Use Potion to heal wound.\n[5] Scan enemy’s vital.\n[6] Flee from battle.")
    print("Your choice? ")
}

func quitGame(){
    var quitChoice: String = ""
    repeat{
        print("\nAre you want to quit the game? [Y/N] ")
        quitChoice = readLine()!
        quitChoice = quitChoice.lowercased()
        if (quitChoice == "y"){
            print("\nThank you for playing, see you soon young wizard!")
            exit(0)
        } else if (quitChoice == "n") {
            print("\nOkay, back to the game ...")
            break
        } else {
            print("\nPlease choose between [Y/N]")
        }
    } while quitChoice != "y" || quitChoice != "n"
}
