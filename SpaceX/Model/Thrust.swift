//
//  Thrust.swift
//  SpaceX
//
//  Created by Hugo Combe on 31/07/2019.
//  Copyright © 2019 Hugo Combe. All rights reserved.
//

import Foundation

public class Thrust: Codable, CustomStringConvertible {
    public var description: String {
        return "\(kN)"
    }
    
    let kN: Double //Thrust in kN
    let lbf: Int //Thrust in lbf
}
