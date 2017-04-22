//
//  VSDayViewController.swift
//  Vshow
//
//  Created by Justin on 2017/4/18.
//  Copyright © 2017年 Justin. All rights reserved.
//

import UIKit
import SnapKit
import SwiftyJSON

class VSDayViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var dataArray = Array<Any>()
    

    fileprivate lazy var tableView:UITableView = {
    
        let tableView = UITableView.init(frame:CGRect.init(x: 0, y: 0, width: SCREEN_WIDTH, height: SCREEN_HEIGH) , style: .grouped)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(VSTableViewCell.self, forCellReuseIdentifier: "VSTableViewCellID")
        return tableView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.view.addSubview(self.tableView)
        
        loadData()
        
    }
    
    func loadData() {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyyMMdd"
        let date = Date()
        let dateString: String = dateFormatter.string(from: date)
        
        let urlString = String(format: kChoice, dateString)
        
        NetworkTool.requestData(type: .get, URLString: urlString, parameters: nil) { (responseJSON) in
            let json = JSON(responseJSON)
            let model = VSChioceModel.init(fromJson: json)
            
            for item in model.dailyList {
                for item2 in item.videoList {
                    
                    self.dataArray.append(item2)
                }
            }
            
            self.tableView.reloadData()
        }

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataArray.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "VSTableViewCellID", for: indexPath) as! VSTableViewCell
        
        let model = self.dataArray[indexPath.row] as! VSVideoList
        
        
        cell.showCellContentWithModel(iconUrl: model.coverForFeed, title: model.title, category: model.category)
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return SCREEN_WIDTH*(9.0/16.0);
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return CGFloat.leastNormalMagnitude
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return CGFloat.leastNormalMagnitude
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let detailVC = VSDetailViewController()
        let model = self.dataArray[indexPath.row] as! VSVideoList
        
        detailVC.model = model
        detailVC.tabBarController?.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(detailVC, animated: true)
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
