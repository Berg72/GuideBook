//
//  City.swift
//  GuideBook
//
//  Created by Mark Bergeson on 3/1/24.
//

import Foundation

struct City: Identifiable {
    
    var id = UUID()
    var name: String
    var summary: String
    var imageName: String
    
    var attractions: [Attraction]
}
