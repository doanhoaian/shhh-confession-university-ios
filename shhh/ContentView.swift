//
//  ContentView.swift
//  shhh
//
//  Created by Mac on 12/5/25.
//

import SwiftUI

struct ContentView: View {

    
    var body: some View {
        VStack {
            Text("Chào bạn 👋")
                .font(.title)
                .foregroundColor(.blue)
            
            Text("Đây là SwiftUI nè!")
                .font(.subheadline)
                .foregroundColor(.gray)
            Button("Register") {
                
            }.buttonStyle(.borderedProminent)
            
            Button("Login") {
                
            }.buttonStyle(.bordered)
            
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
