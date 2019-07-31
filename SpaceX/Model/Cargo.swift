//
//  Cargo.swift
//  SpaceX
//
//  Created by Hugo Combe on 31/07/2019.
//  Copyright © 2019 Hugo Combe. All rights reserved.
//

import Foundation

public class Cargo: Codable, CustomStringConvertible {
    public var description: String {
        return "Cargo --> solar array \(solar_array), unpressurized ? \(unpressurized_cargo)"
    }
    
    let solar_array: Int //Number of solar array of Cargo
    let unpressurized_cargo: Bool //If Cargo is pressurized or not
}
