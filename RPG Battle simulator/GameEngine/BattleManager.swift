//
//  BattleManager.swift
//  RPG Battle simulator
//
//  Created by Hongfei Zheng on 6/19/25.
//

import Foundation
class BattleManager {
    var enemys: [Enemy] = []
    var character: Character
    let battleStatus: BattleStatus
    let battleLogics: BattleLogics
    public init(enemys: [Enemy], character: Character, battleStatus: BattleStatus, battleLogics: BattleLogics) {
        self.enemys = enemys
        self.character = character
        self.battleStatus = battleStatus
        self.battleLogics = battleLogics
    }
}
