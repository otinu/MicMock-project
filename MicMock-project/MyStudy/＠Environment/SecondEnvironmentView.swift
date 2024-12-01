//
//  secondView.swift
//  MicMock-project
//
//  Created by Apple on 2024/12/01.
//

import SwiftUI

struct SecondEnvironmentView: View {
    var body: some View {
        VStack{
            Text("セカンドビューでの出力")
        }
        ThirdEnvironmentView()
    }
}

#Preview {
    SecondEnvironmentView()
}
