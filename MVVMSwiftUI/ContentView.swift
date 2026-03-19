//
//  ContentView.swift
//  MVVMSwiftUI
//
//  Created by G Yacobu on 17/03/26.
//

import SwiftUI

struct ContentView: View {
    
    let listOfItems: [String] = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8", "Item 9", "Item 10"]
    
    var body: some View {
        ZStack {
            Color.blue.opacity(0.2).ignoresSafeArea()
            VStack {
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(.white)
                    .padding()
                
                Text("Profile")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text("Additional Infromation")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                Spacer()
                
                List(listOfItems, id:\.self) { item in 
                    
                }
            }
            
            
        }
    }
}

#Preview {
    ContentView()
}
