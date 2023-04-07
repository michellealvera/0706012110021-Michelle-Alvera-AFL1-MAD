//
//  journey.swift
//  0706012110021-Michelle Alvera-AFL 1
//
//  Created by MacBook Pro on 06/04/23.
//

import Foundation

protocol Skills {
    func physicalAttack()
    func meteor(mp: Int)
    func shield(mp: Int)
    func flee()
}

struct Journey: Skills {
    var name: String
    var description: String
    
    func physicalAttack() {
        var padamage = 5
        print("\nYou dealt \(padamage) damage!")
    }
    
    func meteor(mp: Int) {
        var medamage = 50
        if (mp >= 15) {
            print("\nYou dealt \(medamage) damage")
            print("MP - 15")
        } else {
            print("You ran out of mana!")
        }
    }
    
    func shield(mp: Int) {
        var smp = 10
        if (mp >= 10) {
            print("\n--- Enemy's turn ---")
            print("The enemy attacks you but you successfully block its attack!")
            print("MP - \(smp)")
        } else {
            print("You ran out of mana!")
        }
    }
    
    func flee() {
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
}
