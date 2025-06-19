//
//  NewGame.swift
//  RPG Battle simulator
//
//  Created by Hongfei Zheng on 6/19/25.
//

import Foundation
protocol NewGameSetup {
    func createdCharacter() -> Character
    func createdEnemy() -> Enemy
    func createdBattleManager() -> BattleManager
}
