//
//  Title.swift
//  MicMock-project
//
//  Created by Apple on 2024/11/03.
//

import SwiftUI

struct TitleView: View {
    
    @ObservedObject var viewModel: MemberViewModel = MemberViewModel()
    
    @State var inputName = ""
    
    @EnvironmentObject var environment: AppEnvironment
    
    var body: some View {
        
        NavigationStack {
            
            VStack {
                // UIパーツ呼び出し
                // 定数ファイルから固定値呼び出し
                MessageBox(message: Constants.Title.PAGE_NAME)
                
                Spacer().frame(height: 100)
                
                // データバインドによる、画面の動的変更-----------------
                TextField("お名前",
                          text: $inputName,
                          prompt: Text("氏名を入力してください"))
                .frame(width: 500, height: 50)
                .textFieldStyle(.roundedBorder)
                .onSubmit {
                    viewModel.inputNameUpdateMember(name: inputName)
                }
                
                Text(viewModel.member.name)
                    .font(.largeTitle)
                    .foregroundStyle(.blue)
                Text(String(viewModel.member.birthDay))
                    .font(.largeTitle)
                    .foregroundStyle(.blue)
                
                // 別のViewでデータバインド中のオブジェクト引き継ぎ
                Spacer().frame(height: 50)
                NavigationLink(destination: inputBirthday(viewModel: viewModel)) {
                    Text("生年入力へ遷移")
                }
                
                // ------------データバインド ここまで---------------
                
                // アプリ起動中に言語設定切り替え
                Spacer().frame(height: 50)
                NavigationLink(destination: MultiLanguageView()
                    .environmentObject(environment)
                    .environment(\.locale, .init(identifier: environment.appLocale))
                ) {
                    Text("多言語化ページへ")
                }
            }
        }
        
    }
}


#Preview {
    TitleView()
        .environmentObject(AppEnvironment())
        .environment(\.locale, .init(identifier: "ja"))
}
