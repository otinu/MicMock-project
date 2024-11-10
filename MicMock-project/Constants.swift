//
//  Constant.swift
//  MicMock-project
//
//  Created by Apple on 2024/11/04.
//

import Foundation

enum Constants {
    enum Language {
        static let JAPAN: String = "ja"
        static let ENGLISH: String = "en"
        static let KOREAN: String = "ko"
        static let CHINESE_KANTAI: String = "zh-Hans"
        static let CHINESE_HANTAI: String = "zh-Hant"
    }
    
    // ここから下は仮作成
    // 実際には、TitleViewModelなどViewModel側で管理したい
    enum Title {
        static let PAGE_NAME: String = "タイトル"
    }
    
    enum SampleAPI {
        static let URL: String = "https://jsonplaceholder.typicode.com/users"
    }
}
