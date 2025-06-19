//
//  Skill.swift
//  RPG Battle simulator
//
//  Created by Hongfei Zheng on 6/18/25.
//

import Foundation
enum SkillType {
    case magical
    case physical
    case supportive
}
struct Skill {
    let name: String
    let attributes: Attributes
    let skillType: SkillType
}
