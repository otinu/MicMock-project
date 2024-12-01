//
//  SampleNavigationStack.swift
//  MicMock-project
//
//  Created by Apple on 2024/12/01.
//

import SwiftUI

struct SampleNavigationStack: View {
    var body: some View {
        NavigationStack {
            Section("NavigationStackのサンプル") {
                List {
                    NavigationLink("ロジック入りView") {
                        SampleContainLogic()
                    }
                    
                    NavigationLink("Link") {
                        SampleLink()
                    }
                    
                    NavigationLink("ループ表示") {
                        SampleListView()
                    }
                }
            }
        }
    }
}
        
#Preview {
    SampleNavigationStack()
}
