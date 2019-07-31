//
//  Link.swift
//  SpaceX
//
//  Created by Hugo Combe on 31/07/2019.
//  Copyright © 2019 Hugo Combe. All rights reserved.
//

import Foundation

public class Link: Codable, CustomStringConvertible {
    public var description: String {
        return "Reddit : \(reddit ?? "") \nArticle : \(article ?? "") \nWikipedia : \(wikipedia ?? "")"
    }
    
    let reddit: String? //Reddit Link
    let article: String? //Article Link
    let wikipedia: String? //Wikipedia Link
}
