//
//  RMAllCharactersResponse.swift
//  RickAndMorty
//
//  Created by Joana Ferreira on 23/10/2024.
//

import Foundation

struct RMGetAllCharactersResponse: Codable {
    struct Info: Codable {
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
    }

    let info: Info
    let results: [RMCharacter]
}
