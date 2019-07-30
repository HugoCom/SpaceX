//
//  Mission.swift
//  SpaceX
//
//  Created by Hugo Combe on 30/07/2019.
//  Copyright © 2019 Hugo Combe. All rights reserved.
//

import Foundation

public struct Mission: Codable, CustomStringConvertible {
    public var description: String {
        return "\(name) | \(flight)"
    }
    
    let name: String
    let flight: Int
    
    init?(data: Data?) {
        guard let data = data else {
            print("error import")
            return nil
        }
        let decoder = JSONDecoder()
        if let mission = try? decoder.decode(Mission.self, from: data) {
            self = mission
        } else {
            print("error import")
            return nil
        }
    }
}
