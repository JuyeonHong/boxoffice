//
//  Movie.swift
//  cgv
//
//  Created by 홍주연 on 10/04/2019.
//  Copyright © 2019 hongjuyeon. All rights reserved.
//

import Foundation


class Moviedata{
    let name: String
    let dDay: String
    let rating: String
    let image: String
    
    //let infoHeader: Array<String>
    let infoDetail: Array<String>
    
    
    init(name: String, dDay: String, rating: String, image: String, infoDetail: Array<String>){
        self.name = name
        self.dDay = dDay
        self.rating = rating
        self.image = image
        //self.infoHeader = infoHeader
        self.infoDetail = infoDetail
    }    

    static func createDummy() -> [Moviedata]{
        var temp: [Moviedata] = []
        
        let ex01 = Moviedata(name: "어스", dDay: "D-2", rating: "31.5%", image: "mv1.jpg", infoDetail: ["2019.03.27.",  "15세 관람가", "공포, 스릴러", "미국", "116분", "유니버셜픽쳐스인터내셔널코리아"])
        let ex02 = Moviedata(name: "돈", dDay: "81%", rating: "14.8%", image: "mv2.jpg", infoDetail: ["2019.03.20.",  "15세 관람가", "범죄", "한국", "115분", "((주)쇼박스)"])
        let ex03 = Moviedata(name: "장난스러운 키스", dDay: "10%", rating: "12.6%", image: "mv3.jpg", infoDetail: ["2019.03.27.", "12세 관람가", "멜로/로맨스", "대만",  "122분","오드, 씨나몬(주)홈초이스"])
        let ex04 = Moviedata(name: "덤보", dDay: "3.3%", rating: "8.3%", image: "mv4.jpg", infoDetail: ["2019.03.27.", "전체 관람가", "가족, 판타지", "미국", "111분", "월트 디즈니 컴퍼니 코리아"])
        let ex05 = Moviedata(name: "캡틴 마블", dDay: "2.1%", rating: "6.4%", image: "mv5.jpg", infoDetail: ["2019.03.06.", "12세 관람가", "액션, 모험, SF", "미국", "123분", "월트 디즈니 컴퍼니 코리아"])
        
        temp.append(ex01)
        temp.append(ex02)
        temp.append(ex03)
        temp.append(ex04)
        temp.append(ex05)
        
        return temp
    }
}
