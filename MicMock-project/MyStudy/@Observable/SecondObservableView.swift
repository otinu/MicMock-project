//
//  SecondObservableView.swift
//  MicMock-project
//
//  Created by Apple on 2024/12/01.
//

import SwiftUI

struct SecondObservableView: View {
    
    @State var viewModel: ObservableViewModel
    
    var body: some View {
        VStack {
            Toggle("Toggle", isOn: $viewModel.isPresented)
            
            if viewModel.isPresented {
                Rectangle()
                    .fill(viewModel.color)
                    .frame(width: 500, height: 200)
            }
        }
    }
}
