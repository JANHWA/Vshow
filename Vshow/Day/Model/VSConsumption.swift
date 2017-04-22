//
//	VSConsumption.swift
//
//	Create by 建华 董 on 21/4/2017
//	Copyright © 2017. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import SwiftyJSON


class VSConsumption : NSObject, NSCoding{

	var collectionCount : Int!
	var replyCount : Int!
	var shareCount : Int!


	/**
	 * Instantiate the instance using the passed json values to set the properties values
	 */
	init(fromJson json: JSON!){
		if json.isEmpty{
			return
		}
		collectionCount = json["collectionCount"].intValue
		replyCount = json["replyCount"].intValue
		shareCount = json["shareCount"].intValue
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if collectionCount != nil{
			dictionary["collectionCount"] = collectionCount
		}
		if replyCount != nil{
			dictionary["replyCount"] = replyCount
		}
		if shareCount != nil{
			dictionary["shareCount"] = shareCount
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         collectionCount = aDecoder.decodeObject(forKey: "collectionCount") as? Int
         replyCount = aDecoder.decodeObject(forKey: "replyCount") as? Int
         shareCount = aDecoder.decodeObject(forKey: "shareCount") as? Int

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    func encode(with aCoder: NSCoder)
	{
		if collectionCount != nil{
			aCoder.encode(collectionCount, forKey: "collectionCount")
		}
		if replyCount != nil{
			aCoder.encode(replyCount, forKey: "replyCount")
		}
		if shareCount != nil{
			aCoder.encode(shareCount, forKey: "shareCount")
		}

	}

}
