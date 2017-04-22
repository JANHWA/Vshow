//
//	VSChioceModel.swift
//
//	Create by 建华 董 on 21/4/2017
//	Copyright © 2017. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import SwiftyJSON


class VSChioceModel : NSObject, NSCoding{

	var dailyList : [VSDailyList]!
	var newestIssueType : AnyObject!
	var nextPageUrl : String!
	var nextPublishTime : Int!


	/**
	 * Instantiate the instance using the passed json values to set the properties values
	 */
	init(fromJson json: JSON!){
		if json.isEmpty{
			return
		}
		dailyList = [VSDailyList]()
		let dailyListArray = json["dailyList"].arrayValue
		for dailyListJson in dailyListArray{
			let value = VSDailyList(fromJson: dailyListJson)
			dailyList.append(value)
		}
		newestIssueType = json["newestIssueType"].stringValue as AnyObject!
		nextPageUrl = json["nextPageUrl"].stringValue
		nextPublishTime = json["nextPublishTime"].intValue
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if dailyList != nil{
			var dictionaryElements = [[String:Any]]()
			for dailyListElement in dailyList {
				dictionaryElements.append(dailyListElement.toDictionary())
			}
			dictionary["dailyList"] = dictionaryElements
		}
		if newestIssueType != nil{
			dictionary["newestIssueType"] = newestIssueType
		}
		if nextPageUrl != nil{
			dictionary["nextPageUrl"] = nextPageUrl
		}
		if nextPublishTime != nil{
			dictionary["nextPublishTime"] = nextPublishTime
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         dailyList = aDecoder.decodeObject(forKey: "dailyList") as? [VSDailyList]
         newestIssueType = aDecoder.decodeObject(forKey: "newestIssueType") as? AnyObject
         nextPageUrl = aDecoder.decodeObject(forKey: "nextPageUrl") as? String
         nextPublishTime = aDecoder.decodeObject(forKey: "nextPublishTime") as? Int

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    func encode(with aCoder: NSCoder)
	{
		if dailyList != nil{
			aCoder.encode(dailyList, forKey: "dailyList")
		}
		if newestIssueType != nil{
			aCoder.encode(newestIssueType, forKey: "newestIssueType")
		}
		if nextPageUrl != nil{
			aCoder.encode(nextPageUrl, forKey: "nextPageUrl")
		}
		if nextPublishTime != nil{
			aCoder.encode(nextPublishTime, forKey: "nextPublishTime")
		}

	}

}
