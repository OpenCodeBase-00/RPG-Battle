//
//  Item.swift
//  RPG Battle simulator
//
//  Created by Hongfei Zheng on 6/18/25.
//

import Foundation

enum Rarity {
    case common
    case uncommon
    case rare
    case epic
    case legendary
}
enum ItemType {
    case equiment
    case consumption
    case skillBook
    case material
    case others
}
struct Item {
    let name: String
    let rarity: Rarity
    let attributes: Attributes
    let numbers: Int
    let itemType: ItemType
}
