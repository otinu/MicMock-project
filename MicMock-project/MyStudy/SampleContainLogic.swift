//
//  ContainLogicSample.swift
//  MicMock-project
//
//  Created by Apple on 2024/12/01.
//

import SwiftUI

struct SampleContainLogic: View {
    func getRandom() -> Int {
        Int.random(in: 1..<100)
    }
    
    var body: some View {
        // Intは.description()で読み込める様子
        Text(getRandom().description)
    }
}

#Preview {
    SampleContainLogic()
}
