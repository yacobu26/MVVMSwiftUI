//
//  CartDTO.swift
//  MVVMSwiftUI
//
//  Created by G Yacobu on 19/03/26.
//

import Foundation

struct CartResponseDTO: Codable {
    let carts: [CartDTO]
}


struct CartDTO:Codable {
    let id: Int
    let total: Double
    let totalQuantity: Int
}

extension CartDTO {
    
    func toDomain() -> Cart {
        Cart(id: id, total: total, totalQuantity: totalQuantity)
    }
}
