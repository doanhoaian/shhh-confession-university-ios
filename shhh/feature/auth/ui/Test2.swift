//
//  Test2.swift
//  shhh
//
//  Created by Mac on 21/5/25.
//

import SwiftUI

struct Test2Screen: View {
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            VStack(spacing: 20) {
                Spacer()
                
                Image("compose")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                
                Text("Jetpack Compose")
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text("Jetpack Compose is a modern UI toolkit...")
                    .font(.body)
                    .foregroundColor(.gray)
                
                Spacer()
                
                Button(action: {
                }) {
                    Text("I'm Ready")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(100)
                }
                .padding(.horizontal)
            }
            .padding()
            
            VStack(alignment: .trailing, spacing: 4) {
                Text("Đoàn Hoài Ân")
                    .font(.headline)
                    .bold()
                
                Text("082205007464")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding()
            .padding([.top, .trailing])
        }
    }
}


#Preview {
    Test2Screen()
}
