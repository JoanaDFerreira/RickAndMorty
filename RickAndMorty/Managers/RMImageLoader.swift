//
//  RMImageLoader.swift
//  RickAndMorty
//
//  Created by Joana Ferreira on 24/10/2024.
//

import Foundation

final class RMImageLoader {
 
    static let shared = RMImageLoader()
    
    public func downloadImage(_ url: URL, completion: @escaping (Result<Data, Error>) -> Void) {
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                completion(.failure(error ?? URLError(.badServerResponse)))
                return
            }
            
            completion(.success(data))
        }
        task.resume()
    }
}
