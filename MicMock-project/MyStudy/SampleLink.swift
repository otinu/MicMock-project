//
//  SampleLink.swift
//  MicMock-project
//
//  Created by Apple on 2024/12/01.
//

import SwiftUI

struct SampleLink: View {
    var body: some View {
        
        // シミュレータにて遷移可能
        Link("URL指定でのリンク",
              destination: URL(string: "https://developer.apple.com/documentation/swiftui/link")!)
    }
}

#Preview {
    SampleLink()
}
