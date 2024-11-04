//
//  Member.swift
//  MicMock-project
//
//  Created by Apple on 2024/11/03.
//

import Foundation

struct Member: Identifiable {
    let id: String = UUID().uuidString
    var name: String
    var birthDay: Int
}
