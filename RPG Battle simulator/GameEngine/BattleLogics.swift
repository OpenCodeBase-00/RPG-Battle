//
//  BattleLogics.swift
//  RPG Battle simulator
//
//  Created by Hongfei Zheng on 6/19/25.
//

import Foundation
struct BattleLogics {
    var enemies: [Enemy]
    var character: Character
    func characterAttack(targets: [UUID]) {
        for target in targets {
            let enemy = enemies.first { enemy in
                enemy.id == target
            }
            if let HP = enemy?.attributes.HP, let defend = enemy?.attributes.defend, let attack =  character.attributes.attack {
                if attack > defend {
                    enemy?.attributes.HP = HP - (attack - defend)
                }
            }
        }
    }
}
