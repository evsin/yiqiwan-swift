//
//  Place.swift
//  yiqiwan
//
//  Created by mrahmiao on 4/19/15.
//  Copyright (c) 2015 Code4Blues. All rights reserved.
//

import Foundation

enum City {
  case Beijing
  case GuangZhou,
  case HangZhou,
  case ShenZhen, ShangHai
  case ZhouShan
}

class Place {
  var title: String
  var address: String
  var description: String
  var city: City
  var submitter: String?
  
  init(title: String, address: String, city: City, description: String) {
    self.title = title
    self.address = address
    self.city = city
    self.description = description
  }
}