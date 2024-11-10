//
//  sampleAPIViewModel.swift
//  MicMock-project
//
//  Created by Apple on 2024/11/04.
//

import Foundation
import Combine

class SampleAPIViewModel: ObservableObject {
    @Published var model: [SampleAPIModel] = []
    
    // Combineフレームワークで非同期処理をする準備
    private var cancellable: AnyCancellable?
    
    func fetchUsers() {
        guard let url = URL(string: Constants.SampleAPI.URL) else { return }
        
        /* POSTを飛ばす場合、HTTPリクエストを準備する必要がある
         
        // POSTリクエストを作成
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        // 必要に応じてボディを設定（例: 新しいユーザーの情報）
        let newUser = ["name": "John Doe", "email": "john@example.com"]
        do {
            request.httpBody = try JSONSerialization.data(withJSONObject: newUser, options: [])
        } catch {
            print("Failed to serialize JSON: \(error)")
            return
        }
         */
        
        cancellable = URLSession.shared.dataTaskPublisher(for: url)
        // 受け取ったデータをモデルに変換
            .map { $0.data }
            .decode(type: [SampleAPIModel].self, decoder: JSONDecoder())
        
        // エラーハンドリング（この場合は空の配列を返す）
            .replaceError(with: [])
        
        // UIを更新するためメインスレッドに切り替え
            .receive(on: RunLoop.main)
        
        // 「@Published var model」に取得したデータを代入
            .assign(to: \.model, on: self)
    }
}
