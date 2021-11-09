//
//  VideoPlayerView.swift
//  AfricaApp
//
//  Created by Oleg Kudimov on 11/4/21.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    
    var videoSelected: String
    var videoTitle: String
    
    
    var body: some View {
        VStack {
            VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: videoSelected, withExtension: "mp4")!)) {
                //Text(videoTitle)
            }
            .overlay(
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .padding(.bottom, 6)
                .padding(.horizontal, 8),
            alignment: .bottomTrailing
            )
        } //: VStack
        .accentColor(.accentColor)
        .navigationBarTitle(videoTitle, displayMode: .inline)
    }

}
    
//struct VideoPlayerView_Previews: PreviewProvider {
//        static var previews: some View {
//            VideoPlayerView()
//        }
//    }
//
//}
