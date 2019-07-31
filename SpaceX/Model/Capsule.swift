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
    
    let capsule_serial: String //Capsule serial
    let capsule_id: String //Capsule id
    let status: String //Capsule status
    let original_launch: String? //Capsule original launch time
    let original_launch_unix: Int? //Capsule original launch unix time
    let missions: [DetailMission] //Capsule missions
    let landings: Int //Capsule number of landings
    let type: String //Capsule type
    let details: String? //Capsule details
    let reuse_count: Int //Number of time capsule was reused
}
