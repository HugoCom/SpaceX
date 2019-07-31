//
//  History.swift
//  SpaceX
//
//  Created by Hugo Combe on 31/07/2019.
//  Copyright © 2019 Hugo Combe. All rights reserved.
//

import Foundation

public class History: Codable, CustomStringConvertible {
    public var description: String {
        return "\(id) -- \(title)\nDetails : \(details)\nLinks : \n\(links)\n"
    }
    
    let id: Int //History ID
    let title: String //Title of History
    let event_date_utc: String //Date of History
    let event_date_unix: Int //Unix date of History
    let flight_number: Int? //Flight number of History
    let details: String //Details about History
    let links: Link //Links of History
}
