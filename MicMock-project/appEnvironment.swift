//
//  Environment.swift
//  MicMock-project
//
//  Created by Apple on 2024/11/10.
//

import SwiftUI

// 独自の環境変数を扱うクラス

class AppEnvironment: ObservableObject {
    @Published var appLocale = Constants.Language.JAPAN
}
