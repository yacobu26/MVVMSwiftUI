//
//  GetCartsUseCase.swift
//  MVVMSwiftUI
//
//  Created by G Yacobu on 19/03/26.
//

import Foundation

final class GetCartsUseCase: GetCartsUseCaseProtocol {
    
    private let repository: CartRepositoryProtocol
    
    init(repository: CartRepositoryProtocol) {
        self.repository = repository
    }
    
    func execute() async throws -> [Cart] {
       try await repository.fetchCarts()
    }
    
    
    
}
