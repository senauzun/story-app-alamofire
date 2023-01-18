//
//  StoryData.swift
//  StoryAppAlamofire
//
//  Created by Sena Uzun on 18.01.2023.
//

import Foundation
// MARK: - Welcome
struct Welcome: Codable {
    let type: String
    let value: [Value]
}

// MARK: - Value
struct Value: Codable {
    let id: Int
    let story: String
    let categories: [String]
}
