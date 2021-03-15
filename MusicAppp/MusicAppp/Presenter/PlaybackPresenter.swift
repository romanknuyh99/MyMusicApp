//
//  PlaybackPresenter.swift
//  MusicAppp
//
//  Created by Roman Kniukh on 15.03.21.
//

import UIKit

final class PlaybackPresenter {
    
    static func startPlayback(from viewController: UIViewController, track: AudioTrack) {
        let vc = PlayerViewController()
        viewController.present(vc, animated: true, completion: nil)
    }
    
    static func startPlayback(from viewController: UIViewController, track: [AudioTrack]) {
        
    }
    
    
}
