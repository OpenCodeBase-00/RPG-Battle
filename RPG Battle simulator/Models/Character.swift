//
//  Character.swift
//  RPG Battle simulator
//
//  Created by Hongfei Zheng on 6/15/25.
//

import Foundation

class Character: Identifiable {
    let id = UUID()
    let name: String
    var isAlive: Bool {
        if let HP = attributes.HP, HP > 0 {
            return true
        } else {
            return false
        }
    }
    var level: Int
    let attributes: Attributes
    var items: [Item]
    var skills: [Skill]
    
    public init(name: String, level: Int, attributes: Attributes, items: [Item], skills: [Skill]) {
        self.name = name
        self.level = level
        self.attributes = attributes
        self.items = items
        self.skills = skills
    }
    
    func printOutCharacterStatus() {
        let attributes = self.attributes
        if let HP = attributes.HP, let MP = attributes.MP, let strength = attributes.strength, let agility = attributes.agility, let intelligence = attributes.intelligence, let attack = attributes.attack, let defend = attributes.defend, let evasion = attributes.evasion {
            print("Character:")
            print("Name \(name)")
            print("Level: \(level)")
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
    
    func printOutItems() {
        for item in items {
            print("Name: \(item.name)")
            print("Rarity: \(item.rarity)")
            print("Type: \(item.itemType)")
            print("Numbers: \(item.numbers)")
        }
    }
}
