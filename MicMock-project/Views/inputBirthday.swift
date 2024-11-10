//
//  inputBirthday.swift
//  MicMock-project
//
//  Created by Apple on 2024/11/04.
//

import SwiftUI

struct inputBirthday: View {
    @ObservedObject var viewModel: MemberViewModel
    @State var inputBirthDay: Int = 0
    
    var body: some View {
        MessageBox(message: "生年入力")
        
        Spacer().frame(height: 100)
        
        Text(viewModel.member.name)
            .font(.largeTitle)
            .foregroundStyle(.green)
        
        Text(String(viewModel.member.birthDay))
            .font(.largeTitle)
            .foregroundStyle(.green)
        
        TextField("生年月日", value: $inputBirthDay, format: .number)
        .frame(width: 500, height: 50)
        .textFieldStyle(.roundedBorder)
        .onSubmit {
            viewModel.inputBirthdayUpdateMember(birthDay: inputBirthDay)
        }
    }
}
