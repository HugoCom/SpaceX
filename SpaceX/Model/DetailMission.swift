//
//  DetailMission.swift
//  SpaceX
//
//  Created by Hugo Combe on 30/07/2019.
//  Copyright © 2019 Hugo Combe. All rights reserved.
//

import Foundation

public struct DetailMission: Codable, CustomStringConvertible {
    public var description: String {
        return "\(name) | \(flight)"
    }
    
    let name: String //Mission name
    let flight: Int //Mission flight number
}
