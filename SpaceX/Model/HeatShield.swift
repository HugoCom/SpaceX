//
//  HeatShield.swift
//  SpaceX
//
//  Created by Hugo Combe on 31/07/2019.
//  Copyright © 2019 Hugo Combe. All rights reserved.
//

import Foundation
public class HeatShield: Codable, CustomStringConvertible {
    public var description: String {
        return "HeatShield --> made of \(material), \(temp_degrees)°C"
    }
    
    let material: String //Material of HeatShield
    let size_meters: Double //HeatShield size in meter
    let temp_degrees: Int //Temperature in degree of HeatShield
    let dev_partner: String //Development partner of HeatShield
}
