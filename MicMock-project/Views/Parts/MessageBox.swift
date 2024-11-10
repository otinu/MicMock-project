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
        // LocalizedStringKey()により、定数も多言語化可能
        Text(LocalizedStringKey(message))
            .font(.title2)
            .frame(width: 500, height: 200)
            .background(.green)
            .padding()
    }
}

#Preview {
    MessageBox(message: "Hello World")
}
