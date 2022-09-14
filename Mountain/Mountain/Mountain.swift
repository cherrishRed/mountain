//
//  Mountain.swift
//  Mountain
//
//  Created by RED, Hamo on 2022/09/14.
//

import Foundation

struct Mountain: Hashable {
  let title: String
  let subTitle: String
  let imageName: String
  let latitude: Double
  let longitude: Double
  var clear: Bool = false
}

class Service {
  var mountainsData: [Mountain] = [Mountain(title: "가리산", subTitle: " ‘강원 제1의전망대'로 불릴 만큼 정상 조망이 뛰어난 것으로 유명한 산", imageName: "가리산", latitude: 37.863087, longitude: 127.984306)]
}

