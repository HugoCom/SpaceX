//
//  PressurizedCapsule.swift
//  SpaceX
//
//  Created by Hugo Combe on 31/07/2019.
//  Copyright © 2019 Hugo Combe. All rights reserved.
//

import Foundation

public class PressurizedCapsule: Codable, CustomStringConvertible {
    public var description: String {
        return "PressurizedCaspule --> payload volulme \(payload_volume)"
    }
    
    let payload_volume: Volume //Payload volume of PressurizedCapsule
}
