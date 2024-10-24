//
//  RMCharacterCollectionViewCellViewModel.swift
//  RickAndMorty
//
//  Created by Joana Ferreira on 24/10/2024.
//

import Foundation

final class RMCharacterCollectionViewCellViewModel {
    
    public let characterName: String
    private let characterStatus: RMCharacterStatus
    private let characterImageUrl: URL?
    

    init(
        characterName: String,
        characterStatus: RMCharacterStatus,
        characterImageUrl: URL?
    ) {
        self.characterName = characterName
        self.characterStatus = characterStatus
        self.characterImageUrl = characterImageUrl
    }
    
    public var characterStatusText: String {
        return "Status: \(characterStatus.rawValue)"
    }
    
    public func fetchImage(completion: @escaping (Result<Data, Error>) -> Void) {
        guard let url = characterImageUrl else {
            completion(.failure(URLError(.badURL)))
            return
        }
        //download image
    }
}
