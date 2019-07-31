//
//  Mass.swift
//  SpaceX
//
//  Created by Hugo Combe on 31/07/2019.
//  Copyright © 2019 Hugo Combe. All rights reserved.
//

import Foundation

public class Mass: Codable, CustomStringConvertible {
    public var description: String {
        return "\(kg)"
    }
    
    let kg: Int //Mass in kg
    let lb: Int //Mass in lb
}
