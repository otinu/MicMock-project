//
//  firstView.swift
//  MicMock-project
//
//  Created by Apple on 2024/12/01.
//

import SwiftUI

struct FirstEnvironmentView: View {
    
    @State private var number: Int = 0
    
    var body: some View {
        VStack {
            Spacer().frame(height: 100)
            
            Text("\(number)")
                .font(.largeTitle)
            
            Button("値をプラス") {
                number += 1
            }
            
            
            NavigationStack {
                NavigationLink("子のViewへ移動") {
                    SecondEnvironmentView().environment(\.number, number)
                }
            }
        }
    }
}

#Preview {
    FirstEnvironmentView()
}
