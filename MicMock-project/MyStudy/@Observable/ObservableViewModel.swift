//
//  ObservableViewModel.swift
//  MicMock-project
//
//  Created by Apple on 2024/12/01.
//

import Foundation
import SwiftUICore

@Observable
// classじゃないとNG
final class ObservableViewModel {
    let color: Color
    var isPresented = false
    
    init(
        color: Color,
        isPresented: Bool
    ) {
        self.color = color
        self.isPresented = isPresented
    }
}
