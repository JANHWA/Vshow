//
//  CustomTabbarController.swift
//  Vshow
//
//  Created by Justin on 2017/4/18.
//  Copyright © 2017年 Justin. All rights reserved.
//

import UIKit

class CustomTabbarController: UITabBarController {
    
    var titleArray:[String]?
    var classArray:[UIViewController]?
    var imageArray:[String]?
    var selectImageArray:[String]?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        loadData()
        loadController()
    }
    
    func loadData() {
        titleArray = ["每日精选","发现更多","热门排行","我的收藏"]
        classArray = [VSDayViewController(),VSDiscoverViewController(),VSRankViewController(),VSMeViewController()]
        imageArray = ["icon_zx_nomal_pgall","icon_jx_nomal_pgall","icon_sq_nomal_pgall","icon_w_nomal_pgall"]
        selectImageArray = ["icon_zx_pressed_pgall","icon_jx_pressed_pgall","icon_sq_pressed_pgall","icon_w_pressed_pgall"]
    
    }
    
    fileprivate func loadController () {
        
        var i = 0
        
        for vc:UIViewController in classArray! {
            
            configViewController(vc: vc, title: (titleArray?[i])!, image: (imageArray?[i])!, selectImage: (selectImageArray?[i])!)
            
            i += 1;
        
        }
        
    }
    
    fileprivate func configViewController(vc:UIViewController,title:String,image:String,selectImage:String) {
        
        vc.title = title
        vc.tabBarItem.title = title
        vc.tabBarItem.image = UIImage(named:image)?.withRenderingMode(.alwaysOriginal)
        vc.tabBarItem.selectedImage = UIImage(named: selectImage)?.withRenderingMode(.alwaysOriginal)
        
        selectedTapTabBarItems(tabBarItem: vc.tabBarItem)
        unSelectedTapTabBarItems(tabBarItem: vc.tabBarItem)
        
        // tootVC 加在NAVC
        let navigationC = UINavigationController.init(rootViewController: vc)
//        navigationC.navigationBar.barStyle = .black
//        navigationC.navigationBar.isTranslucent = false
        
        self.addChildViewController(navigationC)
        
        
    }

    func unSelectedTapTabBarItems(tabBarItem:UITabBarItem) {
        tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName:UIColor.gray,NSFontAttributeName:UIFont.systemFont(ofSize: 11.0)], for: .normal)
    }
    
    func selectedTapTabBarItems(tabBarItem:UITabBarItem) {
        tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName:UIColor.red,NSFontAttributeName:UIFont.systemFont(ofSize: 11.0)], for: .selected)
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
