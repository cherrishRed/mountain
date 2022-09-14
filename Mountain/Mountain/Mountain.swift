//
//  Mountain.swift
//  Mountain
//
//  Created by 이태영 on 2022/09/14.
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
