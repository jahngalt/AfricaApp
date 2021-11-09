//
//  VideoPlayerHelper.swift
//  AfricaApp
//
//  Created by Oleg Kudimov on 11/4/21.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer?

func playVideo(filename: String, format: String) {
    
    
    guard  let url = Bundle.main.url(forResource: filename, withExtension: format) else {
        debugPrint("Video not find")
        return 
    }
            
    videoPlayer = AVPlayer(url: url)
        
    videoPlayer?.play()
}
