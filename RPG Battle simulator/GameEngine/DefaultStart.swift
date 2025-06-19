//
//  NewGame.swift
//  RPG Battle simulator
//
//  Created by Hongfei Zheng on 6/19/25.
//

import Foundation
struct DefaultStart: NewGameSetup {
    func createdCharacter() -> Character {
        let characterAttributes = Attributes(strength: 3, agility: 3, intelligence: 3)
        let character = Character(name: "Hero - 00", attributes: characterAttributes, items: [], skills: [])
        return character
    }
    
    func createdEnemy() -> Enemy {
        let enemy = Enemy(name: "minor - 01", attributes: Attributes(strength: 1, agility: 1, intelligence: 1), items: [], skills: [])
        return enemy
    }
    
    func createdBattleManager() -> BattleManager {
        let character = createdCharacter()
        let enemy = createdEnemy()
        let battleLog = BattleLogs(title: "Start of the battle", message: "First Round!")
        let battleStatus = BattleStatus(isBattleActive: true, targetTurn: character.id, dropItems: [], logs: [battleLog], character: character, enemies: [enemy])
        let battleLogic = BattleLogics(enemies: [enemy], character: character)
        let battleManager = BattleManager(enemys: [enemy], character: character, battleStatus: battleStatus, battleLogics: battleLogic)
        return battleManager
    }
    
    
}
