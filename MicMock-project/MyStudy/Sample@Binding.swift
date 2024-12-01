//
//  Sample@Binding.swift
//  MicMock-project
//
//  Created by Apple on 2024/12/01.
//

import SwiftUI

struct Sample_Binding: View {
    @Binding var number: Int
    
    // Sample@Stateからnumberを渡される
    var body: some View {
        Text(number.description)
    }
}
