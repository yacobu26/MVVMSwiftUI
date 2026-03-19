//
//  CartRepository.swift
//  MVVMSwiftUI
//
//  Created by G Yacobu on 19/03/26.
//

import Foundation

protocol CartRepositoryProtocol {
    func fetchCarts() async throws -> [Cart]
}
