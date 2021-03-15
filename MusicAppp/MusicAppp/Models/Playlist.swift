//
//  Playlist.swift
//  MusicAppp
//
//  Created by Roman Kniukh on 11.03.21.
//

import Foundation

struct Playlist: Codable {
    let description: String
    let external_urls: [String: String]
    let id: String
    let images: [APIImage]
    let name: String
    let owner: User
}
