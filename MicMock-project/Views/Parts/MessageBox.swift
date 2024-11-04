//
//  MessageBox.swift
//  MicMock-project
//
//  Created by Apple on 2024/11/03.
//

import SwiftUI

struct MessageBox: View {
    
    let message: String
    
    var body: some View {
        Text("\(message)")
            .font(.title2)
            .frame(width: 500, height: 200)
            .background(.green)
            .padding()
            
    }
}
