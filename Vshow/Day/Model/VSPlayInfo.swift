//
//	VSPlayInfo.swift
//
//	Create by 建华 董 on 21/4/2017
//	Copyright © 2017. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import SwiftyJSON


class VSPlayInfo : NSObject, NSCoding{

	var height : Int!
	var name : String!
	var type : String!
	var url : String!
	var urlList : [VSUrlList]!
	var width : Int!


	/**
	 * Instantiate the instance using the passed json values to set the properties values
	 */
	init(fromJson json: JSON!){
		if json.isEmpty{
			return
		}
		height = json["height"].intValue
		name = json["name"].stringValue
		type = json["type"].stringValue
		url = json["url"].stringValue
		urlList = [VSUrlList]()
		let urlListArray = json["urlList"].arrayValue
		for urlListJson in urlListArray{
			let value = VSUrlList(fromJson: urlListJson)
			urlList.append(value)
		}
		width = json["width"].intValue
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if height != nil{
			dictionary["height"] = height
		}
		if name != nil{
			dictionary["name"] = name
		}
		if type != nil{
			dictionary["type"] = type
		}
		if url != nil{
			dictionary["url"] = url
		}
		if urlList != nil{
			var dictionaryElements = [[String:Any]]()
			for urlListElement in urlList {
				dictionaryElements.append(urlListElement.toDictionary())
			}
			dictionary["urlList"] = dictionaryElements
		}
		if width != nil{
			dictionary["width"] = width
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         height = aDecoder.decodeObject(forKey: "height") as? Int
         name = aDecoder.decodeObject(forKey: "name") as? String
         type = aDecoder.decodeObject(forKey: "type") as? String
         url = aDecoder.decodeObject(forKey: "url") as? String
         urlList = aDecoder.decodeObject(forKey: "urlList") as? [VSUrlList]
         width = aDecoder.decodeObject(forKey: "width") as? Int

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    func encode(with aCoder: NSCoder)
	{
		if height != nil{
			aCoder.encode(height, forKey: "height")
		}
		if name != nil{
			aCoder.encode(name, forKey: "name")
		}
		if type != nil{
			aCoder.encode(type, forKey: "type")
		}
		if url != nil{
			aCoder.encode(url, forKey: "url")
		}
		if urlList != nil{
			aCoder.encode(urlList, forKey: "urlList")
		}
		if width != nil{
			aCoder.encode(width, forKey: "width")
		}

	}

}
