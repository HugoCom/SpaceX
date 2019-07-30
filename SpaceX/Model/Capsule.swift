//
//  Capsule.swift
//  SpaceX
//
//  Created by Hugo Combe on 30/07/2019.
//  Copyright © 2019 Hugo Combe. All rights reserved.
//

import Foundation

public struct Capsule: Codable, CustomStringConvertible {
    public var description: String {
        return "\(capsule_serial) | \(capsule_id) | \(status) | \(landings) | \(type)"
    }
    
    let capsule_serial: String
    let capsule_id: String
    let status: String
    let original_launch_unix: Int?
    let missions: [Mission]
    let landings: Int
    let type: String
    let details: String?
    let reuse_count: Int
}
