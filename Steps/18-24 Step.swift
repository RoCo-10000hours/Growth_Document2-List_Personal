//
//  ContentView.swift
//  27-practice
//
//  Created by Ro-Co on 2022/10/27.
//

import SwiftUI

                          
struct ToDoItem: Identifiable {
    
//    var id: ObjectIdentifier 
    var id = UUID()
    var imageNames: String          //---> Image
    var task: String                //---> 할일들
}


var listData: [ToDoItem] = [
                                        
    ToDoItem(imageNames: "car.fill", task: "세차를 하자"),
    ToDoItem(imageNames: "house.fill", task: "청소를 하자"),
    ToDoItem(imageNames: "bus.doubledecker", task: "출근 하자"),
    ToDoItem(imageNames: "cart.fill", task: "장을 봐오자"),
    ToDoItem(imageNames: "fork.knife", task: "외식을 하자")

]


                                            //18. 지금까지가 list내용의 80%정도의 내용이고 이것 이외에 예를들엇
                                            // listData내에 ToDoitem내용들이외에도 다른것들을 추가하고싶다고한다면,
                                            //아래의 순서를 따른다


                                    
struct ContentView: View {
    
    @State private var toggleStatus = true
    
    var body: some View {
//        List(listData) { item in
            List() {                                      //19.일단 listData없애고, HStack도 주석해놓고
                Section(header: Text("Setting")) {
                                                    //23. 토글버튼부분과 그 아래부분들이 서로 경계가 없어 보기 불편하다면???
                    
                                                    //24. Section으로 각각 감싸줬음에도 ...뭔가.심심~~~ 하다면???
                    
                    
                    
                    Toggle(isOn: $toggleStatus) {     //20. 토글버튼 하나 입력한 모습. 그리고 이를 위한 바인딩값처리해주기위해
                        Text("알람허용")
                    }
                }                                   //21. 그런데.... 만약 이상태로 list안에 hstack의 항목들을 부러올경우
                                                        //토글들이 쭉~~~ 이어서 추가될 것이다. 이를 피하기위한 꼼수가 필요하다
                                                    //(즉, 현재 토글이있는 줄은 놔두고... 그아래쪽에만 list를 하고싶다면??)
                
                                                    //22, ForEach문을 이용해 응요한 모습
                Section(header: Text("To Do")) {
                    ForEach(listData) { item in
                        HStack {
                            Image(systemName: item.imageNames)
                            Text(item.task)
                            
                        }
                    }
                }
//            HStack{
//                Image(systemName: item.imageNames)
//                Text(item.task)
//
            }
            .listStyle(.
            
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
            
       // }
//        .listStyle(.plain)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}






/////////ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ



