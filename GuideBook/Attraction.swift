//
//  Attraction.swift
//  GuideBook
//
//  Created by Mark Bergeson on 3/1/24.
//

import Foundation

struct Attraction: Identifiable, Decodable {
    
    let id = UUID()
    var name: String
    var summary: String
    var longDescription: String
    var imageName: String
    var latLong: String
}
