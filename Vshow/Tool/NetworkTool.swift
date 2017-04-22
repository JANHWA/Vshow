//
//  NetworkTool.swift
//  Vshow
//
//  Created by Justin on 2017/4/18.
//  Copyright © 2017年 Justin. All rights reserved.
//

import UIKit
import Alamofire

//MARK:- 方法枚举类型

enum MethodType {
    case get
    case post
}

//MARK:- 网络请求工具类
class NetworkTool {

    class func requestData(type:MethodType,URLString:String,parameters:[String:Any]? ,finishedCallback:@escaping (_ result:Any) -> ()) {
        
        // 1.获取类型
        let method = type == .get ? HTTPMethod.get : HTTPMethod.post
        
        // 2.发起网络请求
        Alamofire.request(URLString,method:method,parameters:parameters).responseJSON { (response) in
            // 3.获取结果
            guard let result = response.result.value else {
                print(response.result.error ?? "网络错误")
                return
            }
            
            // 4.将结果回调出去
            finishedCallback(result)
        }
        
    }
}
