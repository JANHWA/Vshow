//
//  VSDetailView.swift
//  Vshow
//
//  Created by Justin on 2017/4/20.
//  Copyright © 2017年 Justin. All rights reserved.
//

import UIKit

class VSDetailView: UIView {

    
    var btnClosure:((UIButton) -> ())?
    
    
    override init(frame: CGRect) {
        super.init(frame: CGRect.zero)
        
        initUI()
        setLayout()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func showContent(model:VSVideoList) {
        
        titleLabel.text = model.title!
        categoryLabel.text = model.category! + String(model.duration) + "\""
        contentTextV.text = model.descriptionField!
        
        bgImageV.kf.setImage(with: URL(string: model.coverBlurred!))
    }
    
    func initUI() {
        
        self.addSubview(self.bgImageV)
        self.addSubview(self.collectBtn)
        self.addSubview(self.titleLabel)
        self.addSubview(self.lineView)
        self.addSubview(self.categoryLabel)
        self.addSubview(self.contentTextV)
    }
    
    func setLayout() {
        
        self.bgImageV.snp.makeConstraints { (make) in
            make.edges.equalTo(UIEdgeInsetsMake(0, 0, 0, 0))
        }
        
        self.titleLabel.snp.makeConstraints { (make) in
            make.top.equalTo(bgImageV).offset(SCREEN_HEIGH * 0.5)
            make.left.equalTo(bgImageV).offset(SCREEN_WIDTH * 0.035)
            make.right.equalTo(bgImageV)
            make.height.equalTo((SCREEN_HEIGH * 0.035))
        }
        
        self.collectBtn.snp.makeConstraints { (make) in
            make.bottom.equalTo(titleLabel.snp.top).offset(-10)
            make.right.equalTo(bgImageV.snp.right).offset(-SCREEN_WIDTH * 0.067)
            make.width.height.equalTo(45)
        }
        
        self.lineView.snp.makeConstraints { (make) in
            make.top.equalTo(titleLabel.snp.bottom).offset(10)
            make.left.equalTo(titleLabel)
            make.right.equalTo(bgImageV.snp.centerX)
            make.height.equalTo(1)
        }
        
        self.categoryLabel.snp.makeConstraints { (make) in
            make.left.right.height.equalTo(titleLabel)
            make.top.equalTo(lineView.snp.bottom).offset(10)
        }
        
        self.contentTextV.snp.makeConstraints { (make) in
            make.left.right.equalTo(titleLabel)
            make.top.equalTo(categoryLabel.snp.bottom).offset(20)
            make.bottom.equalTo(bgImageV.snp.bottom).offset(-20)
        }
        
    }
    
    func collectionBtn(sender:UIButton) {
       
        btnClosure!(sender)
    }
    
    // 收藏按钮
    fileprivate lazy var collectBtn:UIButton = {
       
        let btn = UIButton()
        btn.backgroundColor = UIColor.blue
        btn.setTitle("收藏", for: UIControlState.normal)
        btn.addTarget(self, action: #selector(collectionBtn(sender:)), for: UIControlEvents.touchUpInside)
        return btn
    }()
    
    // 标题
    fileprivate lazy var titleLabel:UILabel = {
       
        let titleLabel = UILabel()
        titleLabel.text = "这是标题"
        return titleLabel
    }()
    
    // 分割线
    fileprivate lazy var lineView:UIView = {
        
        let lineView = UIView()
        lineView.backgroundColor = UIColor.gray
        return lineView
    }()
    
    // 类型、时间
    fileprivate lazy var categoryLabel:UILabel = {
        
        let categoryLabel = UILabel()
        categoryLabel.text = "这是类型及时间"
        return categoryLabel
    }()
    
    // 内容
    fileprivate lazy var contentTextV:UITextView = {
        
        let contentTextV = UITextView()
        contentTextV.backgroundColor = UIColor.clear
        contentTextV.text = "这是内容"
        return contentTextV
    }()
    
    // 背景
    fileprivate lazy var bgImageV:UIImageView = {
       
        let bgImageV = UIImageView()
        return bgImageV
    }()
    
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
