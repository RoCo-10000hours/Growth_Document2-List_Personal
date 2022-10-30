//
//  ContentView.swift
//  27-practice
//
//  Created by 앙겔로스 on 2022/10/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List{               // 3. List 로 목록을 만들어준 상황 스샷1)
            
            HStack{         //5. 이것들을 각각 HStack으로 감싸면?
                            //이런 형태로 위치하게 된다
                Image(systemName: "globe")
                Text("Hello, world!")
            }
            HStack{         //6. 당연히 VStack으로도 되긴하나...
                            // 평범한 모양은 아니다 ^^
                            //7. 그러나 같은 VStack이어도 이미지사이즈를 조금 조절하면...
                
                            //8. 지금까지의 실험들로 말하고자 하는건???
                            // VStack이 있는데 List를 써야하는가???
                            // 그에대한 구분은 주로 """ 화면을 넘어가는 데이타가 있는가?"""
                            //  7번의 실험으로 화면밖까지 리스트가 넘어가게 할 수 있는것!(스크롤로내리며됨)
                            //반면에......화면밖으로 넘어가지않고, 밀어도 밀리지않고, 딱 고정된 모양을
                            //만들고 싶으면 당연히 VStack을 사용하면 된다
                Image(systemName: "globe")
                Text("Hello, world!")
            }
            HStack{
                Image(systemName: "globe")
                Text("Hello, world!")
            }
            HStack{
                Image(systemName: "globe")
                Text("Hello, world!")
            }
            HStack{
                Image(systemName: "globe")
                Text("Hello, world!")
            }
        }
        .listStyle(.plain)  //4. 다양한 List의 형태가 존재
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}






/////////ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ


// 1. List에 관하여 알아보는 시간!!
// 2. List를 사용해보면 알 수 있듯, 위~아래 로 목록을 쌓게 해줌
