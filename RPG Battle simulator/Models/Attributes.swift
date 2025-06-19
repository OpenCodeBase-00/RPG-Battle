//
//  Attributes.swift
//  RPG Battle simulator
//
//  Created by Hongfei Zheng on 6/18/25.
//

import Foundation
class Attributes {
    var strength: Int?
    var agility: Int?
    var intelligence: Int?
    var attack: Int?
    var defend: Int?
    var evasion: Double?
    var HP: Int?
    var MP: Int?
    
    public init(strength: Int = 0, agility: Int = 0, intelligence: Int = 0, attack: Int? = nil, defend: Int? = 0, evasion: Double? = nil, HP: Int? = nil, MP: Int? = nil) {
        self.strength = strength
        self.agility = agility
        self.intelligence = intelligence
        self.attack = attack ?? strength * 3
        self.defend = defend
        self.evasion = evasion ?? Double(agility) * 0.01
        self.HP = strength * 10
        self.MP = intelligence * 10
    }
}
