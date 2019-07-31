//
//  Core.swift
//  SpaceX
//
//  Created by Hugo Combe on 30/07/2019.
//  Copyright © 2019 Hugo Combe. All rights reserved.
//

import Foundation

public struct Core: Codable, CustomStringConvertible {
    public var description: String {
        return "\(core_serial) | \(status)"
    }
    
    let core_serial: String //Core serial
    let block: Int? //Core block number
    let status: String //Core status
    let original_launch: String? //Core original launch time
    let original_launch_unix: Int? //Core original launch unix time
    let missions: [DetailMission] //Core mission
    let reuse_count: Int //Number of times the core was reused
    let rtls_attempts: Int //Number of RLS attempted landings
    let rtls_landings: Int //Number of RTLS successful landings
    let asds_attempts: Int //Number of ASDS attempted landings
    let asds_landings: Int //Number of ASDS successful landings
    let water_landing: Bool //Water landings
}
