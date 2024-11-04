//
//  sampleAPIViewModel.swift
//  MicMock-project
//
//  Created by Apple on 2024/11/04.
//

import Foundation
import Combine

class sampleAPIViewModel: ObservableObject {
    @Published var model: [sampleAPIModel] = []
    private var cancellable: AnyCancellable?

    func fetchUsers() {
        guard let url = URL(string: Constants.SampleAPI.URL) else { return }
        
        cancellable = URLSession.shared.dataTaskPublisher(for: url)
            .map { $0.data }
            .decode(type: [sampleAPIModel].self, decoder: JSONDecoder())
            .replaceError(with: [])
            .receive(on: RunLoop.main)
            .assign(to: \.model, on: self)
    }
}
