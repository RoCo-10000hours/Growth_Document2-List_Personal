//
//  ContentView.swift
//  27-practice
//
//  Created by Ro-Co on 2022/10/27.
//

import SwiftUI

                            //9. 그런데 지금처럼 쫙~ 만들어놓은 리스트가 아닌, 좀 더 동적인 리스트를 원한다면?
                            //아이디어의 시작은 List 아래부분들을 특정 구조체를 만들어 배열로해나가면 되지않을까??
                            // 일단 왼쪽 처럼 구조체부터 만들어 나가보겠다


// 14.Identifiable이라는 프로토콜을 제공했는데, 또다른 error가 발생함
// 이오류는 바로 id값을 꼭 동반되어야만 한다는 의미이다. 그렇기에 새로 id값을 추가하면
// 15.ObjectIdentifier로 하면 id값의 error가 생기기때문에 보통 UUID()를 이용한다고 한다
struct ToDoItem: Identifiable {
    
//    var id: ObjectIdentifier 
    var id = UUID()       //의미는?? 새로id가 생길때마다 "UUID로 새로운값을 심어주세요~" 이런 맥락
                            // UUID ? 일시적으로 유니크한 겹치지않는. 값. 호출할때마다 개별의 구분되는 값이 생성됨
    
    var imageNames: String          //---> Image
    var task: String                //---> 할일들
}


var listData: [ToDoItem] = [           //10. 'ToDoItem'을 배열로만들어서 그걸 담을 수 있는 'listData'를 선언한모습
                                        
                                       //11. List에 입력했던것들 을 다 가져오자.
    ToDoItem(imageNames: "car.fill", task: "세차를 하자"),
    ToDoItem(imageNames: "house.fill", task: "청소를 하자"),
    ToDoItem(imageNames: "bus.doubledecker", task: "출근 하자"),
    ToDoItem(imageNames: "cart.fill", task: "장을 봐오자"),
    ToDoItem(imageNames: "fork.knife", task: "외식을 하자")

]

                                    //12.  그 이후엔 listData를 아래에 반영만 해주면 되기에 ''형태만'' 남기고 지워도 된다'
struct ContentView: View {
    var body: some View {           //13. 이젠 직접 listData를 List에 집어넣어주면,
        List(listData) { item in    // (클로져)의 형태로 item이라하고 하나씩 가져올려고보니 ERROR가 떳다...
                                            
            
                                                //ToDoItem이라는 구조체는 List안에서 하나씩 요소를 끄집어내기에는
                                                //부족함이 있기 떄문이다... 그렇기에 ERROR를 통해
                                                //''' Idetifiable'''이라는 프로토콜을 추가하라고 알려주는 모습
            
            
            //16. 여기까지 했으면 이젠 아래부부부분을 한번 바꿔보면(listData에서 Item을 하나씩 끄집어내보자. 그리고 그걸
            //                                                                          HStack에 심어보자)
            HStack{
                Image(systemName: item.imageNames)
                Text(item.task)
                //17.추가로 아까 입력했던 id 값이 궁금ㅎ하다면?ㅎㅎ
              //   Text("\(item.id)")
                //보다시피 겹치는 id값이 하나도 없이 배정되었음을 알 수 있다
            }
//            HStack{
//
////                Image(systemName: "house.fill")
////                Text("청소를 하자")
//            }
//            HStack{
////                Image(systemName: "bus.doubledecker")
////                Text("출근 하자")
//            }
//            HStack{
////                Image(systemName: "cart.fill")
////                Text("장을 봐오자")
//            }
//            HStack{
////                Image(systemName: "fork.knife")
////                Text("외식을 하자")
            
        }
        .listStyle(.plain)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}






/////////ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ



