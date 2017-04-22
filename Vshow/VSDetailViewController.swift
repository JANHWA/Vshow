//
//  VSDetailViewController.swift
//  Vshow
//
//  Created by Justin on 2017/4/20.
//  Copyright © 2017年 Justin. All rights reserved.
//

import UIKit


class VSDetailViewController: UIViewController {

    
    var model:VSVideoList?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        initUI()
        
    }
    
   fileprivate func initUI() {
        
        let detailV = VSDetailView()
        self.view.addSubview(detailV)
        detailV.snp.makeConstraints { (make) in
            make.size.equalTo(self.view!)
        }
    
        detailV.showContent(model: model!)
    
        detailV.btnClosure = {(sender:UIButton) in
            
            print("点击收藏按钮")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
