//
//  CartViewModel.swift
//  MVVMSwiftUI
//
//  Created by G Yacobu on 19/03/26.
//

import Foundation
import Combine

@MainActor
final class CartViewModel: ObservableObject {
    
    @Published var carts: [Cart] = []
    @Published var errorMessage: String?
    @Published var isLoading: Bool = false
    
    
    private let useCase: GetCartsUseCaseProtocol
    
    init(useCase: GetCartsUseCaseProtocol) {
        self.useCase = useCase
    }
    
    func loadCarts() async {
        isLoading = true
        errorMessage = nil
        
        do {
            carts = try await useCase.execute()
        }catch {
            errorMessage = error.localizedDescription
        }
        
        isLoading = false
    }
    
}
