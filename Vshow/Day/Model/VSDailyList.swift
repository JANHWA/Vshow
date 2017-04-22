//
//	VSDailyList.swift
//
//	Create by 建华 董 on 21/4/2017
//	Copyright © 2017. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import SwiftyJSON


class VSDailyList : NSObject, NSCoding{

	var date : Int!
	var total : Int!
	var videoList : [VSVideoList]!


	/**
	 * Instantiate the instance using the passed json values to set the properties values
	 */
	init(fromJson json: JSON!){
		if json.isEmpty{
			return
		}
		date = json["date"].intValue
		total = json["total"].intValue
		videoList = [VSVideoList]()
		let videoListArray = json["videoList"].arrayValue
		for videoListJson in videoListArray{
			let value = VSVideoList(fromJson: videoListJson)
			videoList.append(value)
		}
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if date != nil{
			dictionary["date"] = date
		}
		if total != nil{
			dictionary["total"] = total
		}
		if videoList != nil{
			var dictionaryElements = [[String:Any]]()
			for videoListElement in videoList {
				dictionaryElements.append(videoListElement.toDictionary())
			}
			dictionary["videoList"] = dictionaryElements
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         date = aDecoder.decodeObject(forKey: "date") as? Int
         total = aDecoder.decodeObject(forKey: "total") as? Int
         videoList = aDecoder.decodeObject(forKey: "videoList") as? [VSVideoList]

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    func encode(with aCoder: NSCoder)
	{
		if date != nil{
			aCoder.encode(date, forKey: "date")
		}
		if total != nil{
			aCoder.encode(total, forKey: "total")
		}
		if videoList != nil{
			aCoder.encode(videoList, forKey: "videoList")
		}

	}

}
