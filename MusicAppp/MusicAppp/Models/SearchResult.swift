//
//  SearchResult.swift
//  MusicAppp
//
//  Created by Roman Kniukh on 15.03.21.
//

import Foundation

enum SearchResult {
    case album(model: Album)
    case track(model: AudioTrack)
    case playlist(model: Playlist)
}
