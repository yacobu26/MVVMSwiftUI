//
//  CartRepositoryImpl.swift
//  MVVMSwiftUI
//
//  Created by G Yacobu on 19/03/26.
//

import Foundation


final class CartRepositoryImpl: CartRepositoryProtocol {
   
    private let networkService: NetworkServiceProtocol
    
    init(networkService: NetworkServiceProtocol) {
        self.networkService = networkService
    }
    
    func fetchCarts() async throws -> [Cart] {
        let url = URL(string: "https://dummyjson.com/carts")!
        
        let response:CartResponseDTO = try await networkService.request(url)
        return response.carts.map { $0.toDomain() }
    }
    
}
