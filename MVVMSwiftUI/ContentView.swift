//
//  ContentView.swift
//  MVVMSwiftUI
//
//  Created by G Yacobu on 17/03/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.blue.opacity(0.2).ignoresSafeArea()
            
            Image(systemName: "person.crop.circle")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.white)
                .padding()
        }
    }
}

#Preview {
    ContentView()
}
