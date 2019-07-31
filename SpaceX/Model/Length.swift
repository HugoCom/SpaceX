//
//  Length.swift
//  SpaceX
//
//  Created by Hugo Combe on 31/07/2019.
//  Copyright © 2019 Hugo Combe. All rights reserved.
//

import Foundation

public class Length: Codable, CustomStringConvertible {
    public var description: String {
        return "\(meters)"
    }
    
    let meters: Double //Height in meters
    let feet: Double //Height in feet
}
