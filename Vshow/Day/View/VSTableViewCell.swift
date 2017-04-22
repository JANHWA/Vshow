//
//  VSTableViewCell.swift
//  Vshow
//
//  Created by Justin on 2017/4/19.
//  Copyright © 2017年 Justin. All rights reserved.
//

import UIKit
import SnapKit
import Kingfisher



class VSTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

        
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        creatUI()
        setLayout()
    }
    
    public func showCellContentWithModel(iconUrl:String?,title:String?,category:String?) {
        
        let url = URL(string:iconUrl!)
        
        self.iconImgV.kf.setImage(with: url!)
        
        self.titleLabel.text = title
        self.categoryLabel.text = category
    }
    
    func creatUI() {
        
        self.contentView.addSubview(self.iconImgV)
        self.contentView.addSubview(self.titleLabel)
        self.contentView.addSubview(self.categoryLabel)
    }
    
    func setLayout() {
        
        self.iconImgV.snp.makeConstraints { (make) in
            
            make.edges.equalToSuperview()
        }
        
        self.titleLabel.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(10)
            make.width.equalToSuperview()
            make.height.equalTo(25)
        }
        
        self.categoryLabel.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.width.height.equalTo(self.titleLabel)
            make.top.equalTo(self.titleLabel.snp.bottom).offset(10)
        }
    }
    
    fileprivate lazy var iconImgV:UIImageView = {
       
        let iconImg = UIImageView()
        iconImg.backgroundColor = UIColor.purple
        return iconImg
    }()
    
    fileprivate lazy var titleLabel:UILabel = {
        
        let titleLabel = UILabel()
        titleLabel.text = "这是标题"
        titleLabel.textAlignment = .center
        titleLabel.font = UIFont.systemFont(ofSize: 15.0)
        return titleLabel
       
    }()
    
    fileprivate lazy var categoryLabel:UILabel = {
        
        let categoryLabel = UILabel()
        categoryLabel.text = "这是分类"
        categoryLabel.textAlignment = .center
        categoryLabel.font = UIFont.systemFont(ofSize: 15.0)
        return categoryLabel
    }()
    
  

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
