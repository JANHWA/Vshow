//
//	VSTag.swift
//
//	Create by 建华 董 on 21/4/2017
//	Copyright © 2017. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import SwiftyJSON


class VSTag : NSObject, NSCoding{

	var actionUrl : String!
	var adTrack : AnyObject!
	var id : Int!
	var name : String!


	/**
	 * Instantiate the instance using the passed json values to set the properties values
	 */
	init(fromJson json: JSON!){
		if json.isEmpty{
			return
		}
		actionUrl = json["actionUrl"].stringValue
		adTrack = json["adTrack"].stringValue as AnyObject!
		id = json["id"].intValue
		name = json["name"].stringValue
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if actionUrl != nil{
			dictionary["actionUrl"] = actionUrl
		}
		if adTrack != nil{
			dictionary["adTrack"] = adTrack
		}
		if id != nil{
			dictionary["id"] = id
		}
		if name != nil{
			dictionary["name"] = name
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         actionUrl = aDecoder.decodeObject(forKey: "actionUrl") as? String
         adTrack = aDecoder.decodeObject(forKey: "adTrack") as? AnyObject
         id = aDecoder.decodeObject(forKey: "id") as? Int
         name = aDecoder.decodeObject(forKey: "name") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    func encode(with aCoder: NSCoder)
	{
		if actionUrl != nil{
			aCoder.encode(actionUrl, forKey: "actionUrl")
		}
		if adTrack != nil{
			aCoder.encode(adTrack, forKey: "adTrack")
		}
		if id != nil{
			aCoder.encode(id, forKey: "id")
		}
		if name != nil{
			aCoder.encode(name, forKey: "name")
		}

	}

}
