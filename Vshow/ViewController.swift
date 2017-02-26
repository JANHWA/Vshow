//
//  ViewController.swift
//  Vshow
//
//  Created by Justin on 2017/2/26.
//  Copyright © 2017年 Justin. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Alamofire.request("http://baobab.wandoujia.com/api/v1/feed?num=10&date=20170226&vc=67&u=011f2924aa2cf27aa5dc8066c041fe08116a9a0c&v=1.8.0&f=iphone").responseJSON { response in
            print(response.request)  // original URL request
            print(response.response) // HTTP URL response
            print(response.data)     // server data
            print(response.result)   // result of response serialization
            
            if let JSON = response.result.value {
                print("JSON: \(JSON)")
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

