//
//  SampleSheet.swift
//  MicMock-project
//
//  Created by Apple on 2024/12/01.
//

import SwiftUI

struct SampleSheet: View {
    
    @State private var isShowSheet = false
    
    var body: some View {
        Button("シートを表示") {
            isShowSheet.toggle()
        }
        .sheet(isPresented: $isShowSheet) {
            MessageBox(message: "シートが開きました")
        }
    }
}

#Preview {
    SampleSheet()
}
