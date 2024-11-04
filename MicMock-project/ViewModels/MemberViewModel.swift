//
//  MemberViewModel.swift
//  MicMock-project
//
//  Created by Apple on 2024/11/03.
//

import SwiftUI

/*
 ViewModelで記載する命名は
 「save」のような【処理の内容】ではなく、
 「onSaveButtonClick」のような【イベントの内容】を表すよう命名する?
 https://zenn.dev/rockname/articles/35ba0c9a66fe1e
 */

class MemberViewModel: ObservableObject {
    @Published var member: Member = Member(name: "Tsubaki Hanako", birthDay: 19991231)
    
    func inputNameUpdateMember(name: String) {
        member.name = name
    }
    
    func inputBirthdayUpdateMember(birthDay: Int) {
        member.birthDay = birthDay
    }
}
