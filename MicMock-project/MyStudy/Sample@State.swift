//
//  Sample@State.swift
//  MicMock-project
//
//  Created by Apple on 2024/12/01.
//

import SwiftUI

struct Sample_State: View {
    
    @State var number: Int = 0
    
    var body: some View {
        VStack {
            Spacer().frame(height: 100)
            
            Text("\(number)")
                .font(.largeTitle)
            
            Button("値をプラス") {
                number += 1
            }
            
            
            
            NavigationStack {
                NavigationLink("@Bindingのサンプル") {
                    Sample_Binding(number: $number)
                }
            }
        }
    }
}

#Preview {
    Sample_State()
}
