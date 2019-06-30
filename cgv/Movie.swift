//
//  Movie.swift
//  cgv
//
//  Created by 홍주연 on 10/04/2019.
//  Copyright © 2019 hongjuyeon. All rights reserved.
//

import Foundation

class Movie{
    let name: String
    let dDay: String
    let rating: String
    let image: String

    let tab: Array<String> = ["영화정보", "출연진", "평점", "리뷰"]
    
    let infoHeader: Array<String> = ["개봉", "등급", "장르", "국가", "러닝타임", "배급"]
    let infoDetail: Array<String>
    
    let audRt: String
    let likeRt: String
    let netRt: String


    init(name: String, dDay: String, rating: String, image: String, infoDetail: Array<String>, audRt: String, likeRt: String, netRt: String){
        self.name = name
        self.dDay = dDay
        self.rating = rating
        self.image = image
        self.infoDetail = infoDetail
        self.audRt = audRt
        self.likeRt = likeRt
        self.netRt = netRt
    }
    
    static func createDummy() -> [Movie]{
        var temp: [Movie] = []

        let ex01 = Movie(name: "어스", dDay: "D-2", rating: "31.5%", image: "mv1.jpg",
                         infoDetail: ["2019.03.27.",  "15세 관람가", "공포, 스릴러", "미국", "116분", "유니버셜픽쳐스인터내셔널코리아"], audRt: "7.76", likeRt: "67%", netRt: "6.87")
        
        let ex02 = Movie(name: "돈", dDay: "81%", rating: "14.8%", image: "mv2.jpg",
                         infoDetail: ["2019.03.20.",  "15세 관람가", "범죄", "한국", "115분", "((주)쇼박스)"],
                         audRt: "8.40", likeRt: "80%", netRt: "7.45")
        
        let ex03 = Movie(name: "장난스런 키스", dDay: "10%", rating: "12.6%", image: "mv3.jpg",
                         infoDetail: ["2019.03.27.", "12세 관람가", "멜로/로맨스", "대만",  "122분","오드, 씨나몬(주)홈초이스"],
                         audRt: "8.45", likeRt: "81%", netRt: "8.30")
        
        let ex04 = Movie(name: "덤보", dDay: "3.3%", rating: "8.3%", image: "mv4.jpg",
                         infoDetail: ["2019.03.27.", "전체 관람가", "가족, 판타지", "미국", "111분", "월트 디즈니 컴퍼니 코리아"],
                         audRt: "9.20", likeRt: "93%", netRt: "8.98")
        
        let ex05 = Movie(name: "캡틴 마블", dDay: "2.1%", rating: "6.4%", image: "mv5.jpg",
                         infoDetail: ["2019.03.06.", "12세 관람가", "액션, 모험, SF", "미국", "123분", "월트 디즈니 컴퍼니 코리아"],
                         audRt: "8.48", likeRt: "79%", netRt: "6.74")

        temp.append(ex01)
        temp.append(ex02)
        temp.append(ex03)
        temp.append(ex04)
        temp.append(ex05)

        return temp
    }
}
