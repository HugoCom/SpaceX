//
//  Thruster.swift
//  SpaceX
//
//  Created by Hugo Combe on 31/07/2019.
//  Copyright © 2019 Hugo Combe. All rights reserved.
//

import Foundation

public class Thruster: Codable, CustomStringConvertible {
    public var description: String {
        return "Thruster --> type \(type), amount \(amount), pods \(pods), Thrust : \(thrust)"
    }
    
    let type: String //Type of Thruster
    let amount: Int //Amout of Thruster
    let pods: Int //Pods of Thruster
    let fuel_1: String //Fuel 1 of Thruster
    let fuel_2: String //Fuel 2 of Thruster
    let thrust: Thrust //Thrust of Thruster
}
