//
//  ListSampleView.swift
//  MicMock-project
//
//  Created by Apple on 2024/11/30.
//

import SwiftUI

struct SampleListView: View {
    let items = ["Apple", "Banana", "Cherry", "Date", "Elderberry"]
    
    var body: some View {
            List(items, id: \.self) { item in
                Text(item)
            }
            .navigationTitle("Fruits")
    }
}

#Preview {
    SampleListView()
}
