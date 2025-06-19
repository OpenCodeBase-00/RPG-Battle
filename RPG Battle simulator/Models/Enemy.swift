//
//  Enemy.swift
//  RPG Battle simulator
//
//  Created by Hongfei Zheng on 6/19/25.
//

import Foundation
enum EnemyType {
    case boss
    case elite
    case minion
}
class Enemy: Identifiable {
    let id = UUID()
    let name: String
    var isAlive: Bool {
        if let HP = attributes.HP, HP > 0 {
            return true
        } else {
            return false
        }
    }
    let attributes: Attributes
    var items: [Item]
    var skills: [Skill]
    public init(name: String, attributes: Attributes, items: [Item], skills: [Skill]) {
        self.name = name
        self.attributes = attributes
        self.items = items
        self.skills = skills
    }
}
