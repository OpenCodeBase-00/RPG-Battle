import Foundation

var keepRunning: Bool = true
let defaultStart = DefaultStart()
let battleManager = defaultStart.createdBattleManager()
battleManager.battleStatus.printOutBattleLogs()
battleManager.battleStatus.printOutCharacterStatus()

while keepRunning {
    print("Next Move (Info, Bag, Battle, Exist):")
    if let input = readLine(){
        switch input {
        case Moves.info.rawValue:
            battleManager.character.printOutCharacterStatus()
        case Moves.bag.rawValue:
            battleManager.character.printOutItems()
        case Moves.battle.rawValue:
            break
        case Moves.exist.rawValue:
            keepRunning = false
        default:
            break
        }
    }
}
enum Moves: String {
    case info
    case bag
    case battle
    case exist
}

