//
//  ListSampleView.swift
//  MicMock-project
//
//  Created by Apple on 2024/11/30.
//

import SwiftUI

struct SampleListView: View {
    let items = ["Apple", "Banana", "Cherry", "Date", "Elderberry"]
    
    let fruitPrices = [
        "Apple": 1.2,
        "Banana": 0.5,
        "Cherry": 3.0,
        "Date": 2.5,
        "Elderberry": 4.0
    ]
    
    var body: some View {
        VStack {
            List(items, id: \.self) { item in
                Text(item)
            }
            .navigationTitle("Fruits")
            
            List(fruitPrices.keys.sorted(), id: \.self) { key in
                            // キーに対応するバリュー（価格）を表示
                            if let price = fruitPrices[key] {
                                HStack {
                                    Text(key + "→ ")
                                    Text("$\(price, specifier: "%.2f")")
                                }
                            }
                        }
                        .navigationTitle("Fruit Prices")
        }
    }
}

#Preview {
    SampleListView()
}
