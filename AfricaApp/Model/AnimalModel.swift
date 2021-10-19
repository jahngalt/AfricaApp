//
//  AnimalModel.swift
//  AfricaApp
//
//  Created by Oleg Kudimov on 10/19/21.
//

import Foundation


struct Animal: Codable, Identifiable {
    let id: Int
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
