//
//  Trunk.swift
//  SpaceX
//
//  Created by Hugo Combe on 31/07/2019.
//  Copyright © 2019 Hugo Combe. All rights reserved.
//

import Foundation

public class Trunk: Codable, CustomStringConvertible {
    public var description: String {
        return "Trunk --> volume \(trunk_volume), \(cargo)"
    }
    
    let trunk_volume: Volume //Trunk volume
    let cargo: Cargo //Cargo of Trunk
}
