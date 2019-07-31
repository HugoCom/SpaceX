//
//  Volume.swift
//  SpaceX
//
//  Created by Hugo Combe on 31/07/2019.
//  Copyright © 2019 Hugo Combe. All rights reserved.
//

import Foundation

public class Volume: Codable, CustomStringConvertible {
    public var description: String {
        return "\(cubic_meters)"
    }
    
    let cubic_meters: Int //Volume in cubic meters
    let cubic_feet: Int //Volume in cuvic feet
}
