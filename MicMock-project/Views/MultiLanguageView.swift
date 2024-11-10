//
//  MultiLanguage.swift
//  MicMock-project
//
//  Created by Apple on 2024/11/10.
//

import SwiftUI

struct MultiLanguageView: View {
    let viewModel: MultiLanguageViewModel = MultiLanguageViewModel()
    // @State var environment.appLocale: String = ""
    @EnvironmentObject var environment: AppEnvironment
    
    var body: some View {
        NavigationStack {
            VStack {
                
                // 多言語表示
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .font(.title)
                    .fontWeight(.bold)
                Spacer().frame(height: 30)
                
                Button(action: {
                    environment.appLocale = Constants.Language.JAPAN
                }) {
                    Text("日本語")
                        .padding()
                        .background(environment.appLocale == Constants.Language.JAPAN ? Color.blue : Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                Spacer().frame(height: 30)
                
                Button(action: {
                    environment.appLocale = Constants.Language.ENGLISH
                }) {
                    Text("English")
                        .padding()
                        .background(environment.appLocale == Constants.Language.ENGLISH ? Color.blue : Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                Spacer().frame(height: 30)
                
                Button(action: {
                    environment.appLocale = Constants.Language.CHINESE_KANTAI
                }) {
                    Text("中国語(簡体字)")
                        .padding()
                        .background(environment.appLocale == Constants.Language.CHINESE_KANTAI ? Color.blue : Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                Spacer().frame(height: 30)
                
                NavigationLink(destination: TitleView()
                    .environmentObject(environment)
                    .environment(\.locale, .init(identifier: environment.appLocale))) {
                    Text("タイトルへ戻る")
                }
                Spacer().frame(height: 30)
                
            }
        }
    }
}

/*
#Preview {
    // プレビューはコードから手動で言語変更
    MultiLanguageView().environmentObject(AppEnvironment())
}
*/
