//
//  ContentView.swift
//  MicMock-project
//
//  Created by Apple on 2024/11/03.
//

import SwiftUI
import Alamofire

struct ContentView: View {
    @State private var responseText: String = "Loading..."

        var body: some View {
            VStack {
                Text(responseText)
                    .padding()

                Button(action: {
                    fetchData()
                }) {
                    Text("Fetch Data")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            .padding()
        }

        func fetchData() {
            let url = "https://jsonplaceholder.typicode.com/posts/1"

            AF.request(url).responseJSON { response in
                switch response.result {
                case .success(let value):
                    if let json = value as? [String: Any], let title = json["title"] as? String {
                        responseText = title
                    }
                case .failure(let error):
                    responseText = "Error: \(error.localizedDescription)"
                }
            }
        }
    }

#Preview {
    ContentView()
}
