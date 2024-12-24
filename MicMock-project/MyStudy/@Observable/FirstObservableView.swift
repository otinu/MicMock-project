//
//  FirstObservable.swift
//  MicMock-project
//
//  Created by Apple on 2024/12/01.
//

import SwiftUI

struct FirstObservableView: View {
    var body: some View {
        SecondObservableView(viewModel: ObservableViewModel(color: .red, isPresented: true))
    }
}

#Preview {
    FirstObservableView()
}
