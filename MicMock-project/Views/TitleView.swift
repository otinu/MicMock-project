//
//  Title.swift
//  MicMock-project
//
//  Created by Apple on 2024/11/03.
//

import SwiftUI

struct TitleView: View {
    
    @ObservedObject var modelView: MemberViewModel = MemberViewModel()
    
    @State var inputText = ""
    
    var body: some View {
        // NavigationStackの外は画面遷移しない
        Text("ヘッダー")
            .font(.largeTitle)
            .background(.yellow)
            .edgesIgnoringSafeArea(.all)
        
        NavigationStack {
            
            VStack {
                // UIパーツ呼び出し
                MessageBox(message: "タイトル")
                
                Spacer().frame(height: 100)
                
                // データバインドによる、画面の動的変更-----------------
                TextField("お名前",
                          text: $inputText,
                          prompt: Text("氏名を入力してください"))
                .frame(width: 500, height: 50)
                .textFieldStyle(.roundedBorder)
                .onSubmit {
                    modelView.inputNameUpdateMember(name: inputText)
                }
                
                Text(modelView.member.name)
                    .font(.largeTitle)
                    .foregroundStyle(.blue)
                Text(String(modelView.member.birthDay))
                    .font(.largeTitle)
                    .foregroundStyle(.blue)
                // ------------データバインド ここまで---------------
                
                Spacer().frame(height: 100)
                NavigationLink(destination: inputBirthday(modelView: modelView)) {
                    Text("生年入力へ遷移")
                }
            }
        }
        
    }
}


#Preview {
    TitleView()
}
