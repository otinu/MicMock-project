//
//  inputBirthday.swift
//  MicMock-project
//
//  Created by Apple on 2024/11/04.
//

import SwiftUI

struct inputBirthday: View {
    @ObservedObject var modelView: MemberViewModel
    @State var inputBirthDay: Int = 0
    
    var body: some View {
        MessageBox(message: "生年入力")
        
        Spacer().frame(height: 100)
        
        Text(modelView.member.name)
            .font(.largeTitle)
            .foregroundStyle(.green)
        
        Text(String(modelView.member.birthDay))
            .font(.largeTitle)
            .foregroundStyle(.green)
        
        TextField("生年月日", value: $inputBirthDay, format: .number)
        .frame(width: 500, height: 50)
        .textFieldStyle(.roundedBorder)
        .onSubmit {
            modelView.inputBirthdayUpdateMember(birthDay: inputBirthDay)
        }
    }
}
