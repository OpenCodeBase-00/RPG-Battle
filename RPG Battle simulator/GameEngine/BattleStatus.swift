//
//  BattleStatus.swift
//  RPG Battle simulator
//
//  Created by Hongfei Zheng on 6/19/25.
//

import Foundation
struct BattleStatus {
    var isBattleActive: Bool
    var targetTurn: UUID
    var dropItems: [Item]
    var logs: [BattleLogs]
    let character: Character
    let enemies: [Enemy]
    func printOutBattleLogs() {
        for log in logs {
            if let title = log.title, let message = log.message {
                print(title)
                print(message)
            }
        }
    }
    func printOutCharacterStatus() {
        let attributes = character.attributes
        if let HP = attributes.HP, let MP = attributes.MP, let strength = attributes.strength, let agility = attributes.agility, let intelligence = attributes.intelligence, let attack = attributes.attack, let defend = attributes.defend, let evasion = attributes.evasion {
            print("Character:")
            print("HP: \(HP)")
            print("MP: \(MP)")
            print("Strength: \(strength)")
            print("Agility: \(agility)")
            print("Intelligence: \(intelligence)")
            print("attack: \(attack)")
            print("defend: \(defend)")
            print("evasion: \(evasion)")
        }
    }
}
