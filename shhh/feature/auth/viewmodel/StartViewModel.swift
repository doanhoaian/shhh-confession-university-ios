//
//  StartViewModel.swift
//  shhh
//
//  Created by Mac on 17/5/25.
//

import Foundation

class StartViewModel: ObservableObject {
    @Published var count: Int = 0
    
    func increment() {
        count += 1
    }
}
