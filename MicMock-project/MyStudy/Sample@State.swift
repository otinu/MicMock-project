//
//  Sample@State.swift
//  MicMock-project
//
//  Created by Apple on 2024/12/01.
//

import SwiftUI

struct Sample_State: View {
    
    @State var number = 0
    
    var body: some View {
        VStack {
            
            Text("\(number)")
                .font(.largeTitle)
            
            Button("値をプラス") {
                number += 1
            }
        }
    }
}

#Preview {
    Sample_State()
}
