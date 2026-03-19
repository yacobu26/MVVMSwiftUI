//
//  NetworkServiceImpl.swift
//  MVVMSwiftUI
//
//  Created by G Yacobu on 19/03/26.
//

import Foundation

final class NetworkServiceImpl: NetworkServiceProtocol {
    
    func request<T>(_ url: URL) async throws -> T where T : Decodable {
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let response = response as? HTTPURLResponse, 200...299 ~= response.statusCode else {
            throw URLError(.badServerResponse)
        }
        return try JSONDecoder().decode(T.self, from: data)
    }
    
    
    
    
}
