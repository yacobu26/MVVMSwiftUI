//
//  GetCartsUseCaseProtocol.swift
//  MVVMSwiftUI
//
//  Created by G Yacobu on 19/03/26.
//

import Foundation

protocol GetCartsUseCaseProtocol {
    
    func execute() async throws -> [Cart]
    
}
