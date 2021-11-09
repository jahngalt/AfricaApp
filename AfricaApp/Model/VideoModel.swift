//
//  VideoModel.swift
//  AfricaApp
//
//  Created by Oleg Kudimov on 11/4/21.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    //Computed property
    var thumbnail: String {
        "video-\(id)"
    }
}
