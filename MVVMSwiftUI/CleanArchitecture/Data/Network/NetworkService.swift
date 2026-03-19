//
//  NetworkService.swift
//  MVVMSwiftUI
//
//  Created by G Yacobu on 19/03/26.
//

import Foundation

protocol NetworkServiceProtocol {
    
    func request<T: Decodable>(_ url: URL) async throws -> T
    
}
