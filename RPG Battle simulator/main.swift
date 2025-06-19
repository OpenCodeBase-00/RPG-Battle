
import Foundation

let defaultStart = DefaultStart()
let battleManager = defaultStart.createdBattleManager()
battleManager.battleStatus.printOutBattleLogs()
battleManager.battleStatus.printOutCharacterStatus()

print("Enter your level:")
if let input = readLine(), let level = Int(input) {
    print("Your level is \(level)")
} else {
    print("Invalid number.")
}

