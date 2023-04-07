//
//  monster.swift
//  0706012110021-Michelle Alvera-AFL 1
//
//  Created by MacBook Pro on 06/04/23.
//

import Foundation

class Monster {
    var mName: String
    var mHP: Int
    var maxAttack: Int
    
    init(mName: String, mHP: Int, maxAttack: Int) {
        self.mName = mName
        self.mHP = mHP
        self.maxAttack = maxAttack
    }
    
    init(mName: String, mHP: Int) {
        self.mName = mName
        self.mHP = mHP
        maxAttack = 10
    }
    
    init(mName: String, maxAttack: Int) {
        self.mName = mName
        mHP = 1000
        self.maxAttack = maxAttack
    }
    
    func mDamage() {
        var damage = Int.random(in: 0..<maxAttack+1)
        print("\n--- Enemy's turn ---")
        print("Enemy attacked you \(damage) damage")
        winState(monstersHP: &mHP)
    }
    
    func decreaseHP(damage: Int) {
        mHP -= damage
    }
    
    func enemyStat() {
        print("==== Enemy Stats ====")
        print("\n\nName: \(mName) x1\nHealth: \(mHP)")
        print()
    }
}
