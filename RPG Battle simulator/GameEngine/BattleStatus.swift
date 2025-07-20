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
        character.printOutCharacterStatus()
    }
}
