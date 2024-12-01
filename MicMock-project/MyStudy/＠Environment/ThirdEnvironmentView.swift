//
//  ThirdView.swift
//  MicMock-project
//
//  Created by Apple on 2024/12/01.
//

import SwiftUI

struct ThirdEnvironmentView: View {
    @Environment(\.number) var number: Int
    
    var body: some View {
        Text("サードビューでの出力: \(number)")
    }
}

#Preview {
    ThirdEnvironmentView()
}
