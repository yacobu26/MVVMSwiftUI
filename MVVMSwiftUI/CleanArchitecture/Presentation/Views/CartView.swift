//
//  CartView.swift
//  MVVMSwiftUI
//
//  Created by G Yacobu on 19/03/26.
//

import SwiftUI

struct CartView: View {
    @StateObject private var viewModel: CartViewModel
    
    init(viewModel: CartViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    
    
    var body: some View {
        NavigationStack {
            content
            .navigationTitle("Carts")
        }
        
        .task {
            await viewModel.loadCarts()
        }
    }
    @ViewBuilder
    private var content: some View {
        
        if viewModel.isLoading {
            ProgressView()
        } else if let error = viewModel.errorMessage {
            Text("Error: \(error)")
        } else {
            List(viewModel.carts) { cart in
                VStack(alignment: .leading) {
                    Text("Cart Id: \(cart.id)")
                    Text("Total: \(cart.total)")
                    Text("Quantity: \(cart.totalQuantity)")
                }
                
            }
        }
    }
    
}

struct AppDI {
    
    static func makeCartView() -> some View {
        
        let network = NetworkServiceImpl()
        let repository = CartRepositoryImpl(networkService: network)
        let useCase = GetCartsUseCase(repository: repository)
        let viewModel = CartViewModel(useCase: useCase)
        return CartView(viewModel: viewModel)
    }
    
}


#Preview {
    AppDI.makeCartView()
}
