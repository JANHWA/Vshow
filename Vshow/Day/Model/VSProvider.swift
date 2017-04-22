//
//	VSProvider.swift
//
//	Create by 建华 董 on 21/4/2017
//	Copyright © 2017. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import SwiftyJSON


class VSProvider : NSObject, NSCoding{

	var alias : String!
	var icon : String!
	var name : String!


	/**
	 * Instantiate the instance using the passed json values to set the properties values
	 */
	init(fromJson json: JSON!){
		if json.isEmpty{
			return
		}
		alias = json["alias"].stringValue
		icon = json["icon"].stringValue
		name = json["name"].stringValue
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if alias != nil{
			dictionary["alias"] = alias
		}
		if icon != nil{
			dictionary["icon"] = icon
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
         alias = aDecoder.decodeObject(forKey: "alias") as? String
         icon = aDecoder.decodeObject(forKey: "icon") as? String
         name = aDecoder.decodeObject(forKey: "name") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    func encode(with aCoder: NSCoder)
	{
		if alias != nil{
			aCoder.encode(alias, forKey: "alias")
		}
		if icon != nil{
			aCoder.encode(icon, forKey: "icon")
		}
		if name != nil{
			aCoder.encode(name, forKey: "name")
		}

	}

}
