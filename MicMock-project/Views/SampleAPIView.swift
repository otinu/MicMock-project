//
//  sampleAPIView.swift
//  MicMock-project
//
//  Created by Apple on 2024/11/04.
//

import SwiftUI

struct SampleAPIView: View {
    @StateObject private var viewModel = SampleAPIViewModel()

    var body: some View {
        NavigationStack {
            List(viewModel.model) { user in
                VStack(alignment: .leading) {
                    Text(user.name)
                        .font(.headline)
                    Text(user.email)
                        .font(.subheadline)
                }
            }
            .navigationTitle("Users")
            .onAppear {
                viewModel.fetchUsers()
            }
        }
    }
}

#Preview {
    SampleAPIView()
}
