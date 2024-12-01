//
//  EnvironmentNumber.swift
//  MicMock-project
//
//  Created by Apple on 2024/12/01.
//

import Foundation
import SwiftUICore

struct NumberKey: EnvironmentKey {
    // プロパティ名は「defaultValue」で固定
    static var defaultValue: Int = 0
}

extension EnvironmentValues {
    // Xcode16以降の書き方
    @Entry var number: Int = 0
}
