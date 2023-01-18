//
//  StoryData.swift
//  StoryAppAlamofire
//
//  Created by Sena Uzun on 18.01.2023.
//

import Foundation
// MARK: - Welcome
struct Welcome: Identifiable , Codable {
    let id = UUID()
    let type: String
    let value: [Value]
}

// MARK: - Value
struct Value: Identifiable , Codable {
    let id: Int
    let story: String
    let categories: [String]
}

