//
//  HeaderFile.swift
//  Vshow
//
//  Created by Justin on 2017/4/21.
//  Copyright © 2017年 Justin. All rights reserved.
//

import Foundation
import UIKit


let SCREEN_WIDTH = UIScreen.main.bounds.width

let SCREEN_HEIGH = UIScreen.main.bounds.height

/**
 *    每日精选
 */

let kChoice = "http://baobab.wandoujia.com/api/v1/feed?num=5&date=%@"

/**
 *    发现更多
 */
let kDiscover = "http://baobab.wandoujia.com/api/v2/categories"

/**
 *    发现界面的各个分类接口
 */

let kCategory = "http://baobab.wandoujia.com/api/v3/videos?categoryName=%@"

/**
 *    热门排行
 */
// 周排行
let kWeekRank = "http://baobab.wandoujia.com/api/v3/ranklist?num=10&strategy=weekly&udid=827b85f24a1e4f48bdc0b6cdbb23f755457e835c&vc=80&vn=1.13.1&deviceModel=GT-N7102&first_channel=eyepetizer_baidu_market&last_channel=eyepetizer_baidu_market"
// 月排行
let kMonthRank = "http://baobab.wandoujia.com/api/v3/ranklist?num=10&strategy=monthly&udid=827b85f24a1e4f48bdc0b6cdbb23f755457e835c&vc=89&vn=1.13.1&deviceModel=GT-N7102&first_channel=eyepetizer_baidu_market&last_channel=eyepetizer_baidu_market"
// 总排行
let kAllRank = "http://baobab.wandoujia.com/api/v3/ranklist?num=10&strategy=historical&udid=827b85f24a1e4f48bdc0b6cdbb23f755457e835c&vc=89&vn=1.13.1&deviceModel=GT-N7102&first_channel=eyepetizer_baidu_market&last_channel=eyepetizer_baidu_market"

