//
//  Artist.swift
//  MusicAppp
//
//  Created by Roman Kniukh on 11.03.21.
//

import Foundation

struct Artist: Codable {
    let id: String
    let name: String
    let type: String
    let external_urls: [String: String]
}
