//
//  StartScreen.swift
//  shhh
//
//  Created by Mac on 17/5/25.
//

import SwiftUI

struct StartScreen: View {
    
    @StateObject var viewModel = StartViewModel()
    
    var body: some View {
        ZStack {
            
            VStack {
                Image("svg_decore")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                Spacer()
            }

            
            VStack {
                
            }.padding(40)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.surfaceColor)
    }
}


#Preview {
    StartScreen()
}
