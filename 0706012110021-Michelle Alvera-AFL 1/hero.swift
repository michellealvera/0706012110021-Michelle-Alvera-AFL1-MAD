//
//  hero.swift
//  0706012110021-Michelle Alvera-AFL 1
//
//  Created by MacBook Pro on 06/04/23.
//

import Foundation

class Hero {
    var userName: String
    var hp, mp, potion, elixir: Int
    
    init(userName: String) {
        self.userName = userName
        hp = 100
        mp = 50
        potion = 10
        elixir = 5
    }
    
    func checkStat(){
        var statsReturn: String = ""
        repeat {
            print("\nPlayer name: \(userName)")
            print("\nYour current status:")
            print("HP: \(hp)/100\nMP: \(mp)/50\nPotion: \(potion)\nElixir: \(elixir)")
            print("\n\nPress [return] to go back: ")
            statsReturn = readLine()!
            if statsReturn == "" {
                print("Going back to journey screen ...")
                break
            }
        } while statsReturn != ""
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
    
    func decreaseHP(enemyDamage: Int) {
        hp -= enemyDamage
    }
    
    func healWound(){
        var healWound: String = ""
        repeat {
            print("\nYour HP is \(hp).\nYou have \(potion) Potion(s) and \(elixir) Elixir(s).")
            print("[P]otion. Heal 20pt of your HP.\n[E]lixir. Add 10pt to your MP.")
            print("What will you choose young wizard?")
            healWound = readLine()!
            healWound = healWound.lowercased()
            switch healWound {
            case "p":
                if (potion>0){
                    hp += 20
                    potion -= 1
                } else {
                    print("\nYou ran out of potions!")
                }
            case "e":
                if (elixir>0){
                    mp += 10
                    elixir -= 1
                } else {
                    print("\nYou ran out of elixirs!")
                }
            default:
                print("Please input [P/E]")
            }
        } while healWound != "p" || healWound != "e"
    }
}
