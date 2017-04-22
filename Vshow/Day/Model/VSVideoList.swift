//
//	VSVideoList.swift
//
//	Create by 建华 董 on 21/4/2017
//	Copyright © 2017. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import SwiftyJSON


class VSVideoList : NSObject, NSCoding{

	var adTrack : AnyObject!
	var author : AnyObject!
	var campaign : AnyObject!
	var category : String!
	var collected : Bool!
	var consumption : VSConsumption!
	var coverBlurred : String!
	var coverForDetail : String!
	var coverForFeed : String!
	var coverForSharing : AnyObject!
	var dataType : String!
	var date : Int!
	var descriptionField : String!
	var descriptionEditor : String!
	var descriptionPgc : AnyObject!
	var duration : Int!
	var favoriteAdTrack : AnyObject!
	var id : Int!
	var idx : Int!
	var label : AnyObject!
	var labelList : [AnyObject]!
	var library : String!
	var playInfo : [VSPlayInfo]!
	var playUrl : String!
	var played : Bool!
	var promotion : AnyObject!
	var provider : VSProvider!
	var rawWebUrl : String!
	var releaseTime : Int!
	var remark : AnyObject!
	var shareAdTrack : AnyObject!
	var subtitles : [AnyObject]!
	var tags : [VSTag]!
	var title : String!
	var titlePgc : AnyObject!
	var type : String!
	var waterMarks : AnyObject!
	var webAdTrack : AnyObject!
	var webUrlForWeibo : String!


	/**
	 * Instantiate the instance using the passed json values to set the properties values
	 */
	init(fromJson json: JSON!){
		if json.isEmpty{
			return
		}
		adTrack = json["adTrack"].stringValue as AnyObject!
		author = json["author"].stringValue as AnyObject!
		campaign = json["campaign"].stringValue as AnyObject!
		category = json["category"].stringValue
		collected = json["collected"].boolValue
		let consumptionJson = json["consumption"]
		if !consumptionJson.isEmpty{
			consumption = VSConsumption(fromJson: consumptionJson)
		}
		coverBlurred = json["coverBlurred"].stringValue
		coverForDetail = json["coverForDetail"].stringValue
		coverForFeed = json["coverForFeed"].stringValue
		coverForSharing = json["coverForSharing"].stringValue as AnyObject!
		dataType = json["dataType"].stringValue
		date = json["date"].intValue
		descriptionField = json["description"].stringValue
		descriptionEditor = json["descriptionEditor"].stringValue
		descriptionPgc = json["descriptionPgc"].stringValue as AnyObject!
		duration = json["duration"].intValue
		favoriteAdTrack = json["favoriteAdTrack"].stringValue as AnyObject!
		id = json["id"].intValue
		idx = json["idx"].intValue
		label = json["label"].stringValue as AnyObject!
		labelList = [AnyObject]()
		let labelListArray = json["labelList"].arrayValue
		for labelListJson in labelListArray{
			labelList.append(labelListJson.stringValue as AnyObject)
		}
		library = json["library"].stringValue
		playInfo = [VSPlayInfo]()
		let playInfoArray = json["playInfo"].arrayValue
		for playInfoJson in playInfoArray{
			let value = VSPlayInfo(fromJson: playInfoJson)
			playInfo.append(value)
		}
		playUrl = json["playUrl"].stringValue
		played = json["played"].boolValue
		promotion = json["promotion"].stringValue as AnyObject!
		let providerJson = json["provider"]
		if !providerJson.isEmpty{
			provider = VSProvider(fromJson: providerJson)
		}
		rawWebUrl = json["rawWebUrl"].stringValue
		releaseTime = json["releaseTime"].intValue
		remark = json["remark"].stringValue as AnyObject!
		shareAdTrack = json["shareAdTrack"].stringValue as AnyObject!
		subtitles = [AnyObject]()
		let subtitlesArray = json["subtitles"].arrayValue
		for subtitlesJson in subtitlesArray{
			subtitles.append(subtitlesJson.stringValue as AnyObject)
		}
		tags = [VSTag]()
		let tagsArray = json["tags"].arrayValue
		for tagsJson in tagsArray{
			let value = VSTag(fromJson: tagsJson)
			tags.append(value)
		}
		title = json["title"].stringValue
		titlePgc = json["titlePgc"].stringValue as AnyObject!
		type = json["type"].stringValue
		waterMarks = json["waterMarks"].stringValue as AnyObject!
		webAdTrack = json["webAdTrack"].stringValue as AnyObject!
		webUrlForWeibo = json["webUrlForWeibo"].stringValue
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if adTrack != nil{
			dictionary["adTrack"] = adTrack
		}
		if author != nil{
			dictionary["author"] = author
		}
		if campaign != nil{
			dictionary["campaign"] = campaign
		}
		if category != nil{
			dictionary["category"] = category
		}
		if collected != nil{
			dictionary["collected"] = collected
		}
		if consumption != nil{
			dictionary["consumption"] = consumption.toDictionary()
		}
		if coverBlurred != nil{
			dictionary["coverBlurred"] = coverBlurred
		}
		if coverForDetail != nil{
			dictionary["coverForDetail"] = coverForDetail
		}
		if coverForFeed != nil{
			dictionary["coverForFeed"] = coverForFeed
		}
		if coverForSharing != nil{
			dictionary["coverForSharing"] = coverForSharing
		}
		if dataType != nil{
			dictionary["dataType"] = dataType
		}
		if date != nil{
			dictionary["date"] = date
		}
		if descriptionField != nil{
			dictionary["description"] = descriptionField
		}
		if descriptionEditor != nil{
			dictionary["descriptionEditor"] = descriptionEditor
		}
		if descriptionPgc != nil{
			dictionary["descriptionPgc"] = descriptionPgc
		}
		if duration != nil{
			dictionary["duration"] = duration
		}
		if favoriteAdTrack != nil{
			dictionary["favoriteAdTrack"] = favoriteAdTrack
		}
		if id != nil{
			dictionary["id"] = id
		}
		if idx != nil{
			dictionary["idx"] = idx
		}
		if label != nil{
			dictionary["label"] = label
		}
		if labelList != nil{
			dictionary["labelList"] = labelList
		}
		if library != nil{
			dictionary["library"] = library
		}
		if playInfo != nil{
			var dictionaryElements = [[String:Any]]()
			for playInfoElement in playInfo {
				dictionaryElements.append(playInfoElement.toDictionary())
			}
			dictionary["playInfo"] = dictionaryElements
		}
		if playUrl != nil{
			dictionary["playUrl"] = playUrl
		}
		if played != nil{
			dictionary["played"] = played
		}
		if promotion != nil{
			dictionary["promotion"] = promotion
		}
		if provider != nil{
			dictionary["provider"] = provider.toDictionary()
		}
		if rawWebUrl != nil{
			dictionary["rawWebUrl"] = rawWebUrl
		}
		if releaseTime != nil{
			dictionary["releaseTime"] = releaseTime
		}
		if remark != nil{
			dictionary["remark"] = remark
		}
		if shareAdTrack != nil{
			dictionary["shareAdTrack"] = shareAdTrack
		}
		if subtitles != nil{
			dictionary["subtitles"] = subtitles
		}
		if tags != nil{
			var dictionaryElements = [[String:Any]]()
			for tagsElement in tags {
				dictionaryElements.append(tagsElement.toDictionary())
			}
			dictionary["tags"] = dictionaryElements
		}
		if title != nil{
			dictionary["title"] = title
		}
		if titlePgc != nil{
			dictionary["titlePgc"] = titlePgc
		}
		if type != nil{
			dictionary["type"] = type
		}
		if waterMarks != nil{
			dictionary["waterMarks"] = waterMarks
		}
		if webAdTrack != nil{
			dictionary["webAdTrack"] = webAdTrack
		}
		if webUrlForWeibo != nil{
			dictionary["webUrlForWeibo"] = webUrlForWeibo
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         adTrack = aDecoder.decodeObject(forKey: "adTrack") as? AnyObject
         author = aDecoder.decodeObject(forKey: "author") as? AnyObject
         campaign = aDecoder.decodeObject(forKey: "campaign") as? AnyObject
         category = aDecoder.decodeObject(forKey: "category") as? String
         collected = aDecoder.decodeObject(forKey: "collected") as? Bool
         consumption = aDecoder.decodeObject(forKey: "consumption") as? VSConsumption
         coverBlurred = aDecoder.decodeObject(forKey: "coverBlurred") as? String
         coverForDetail = aDecoder.decodeObject(forKey: "coverForDetail") as? String
         coverForFeed = aDecoder.decodeObject(forKey: "coverForFeed") as? String
         coverForSharing = aDecoder.decodeObject(forKey: "coverForSharing") as? AnyObject
         dataType = aDecoder.decodeObject(forKey: "dataType") as? String
         date = aDecoder.decodeObject(forKey: "date") as? Int
         descriptionField = aDecoder.decodeObject(forKey: "description") as? String
         descriptionEditor = aDecoder.decodeObject(forKey: "descriptionEditor") as? String
         descriptionPgc = aDecoder.decodeObject(forKey: "descriptionPgc") as? AnyObject
         duration = aDecoder.decodeObject(forKey: "duration") as? Int
         favoriteAdTrack = aDecoder.decodeObject(forKey: "favoriteAdTrack") as? AnyObject
         id = aDecoder.decodeObject(forKey: "id") as? Int
         idx = aDecoder.decodeObject(forKey: "idx") as? Int
         label = aDecoder.decodeObject(forKey: "label") as? AnyObject
         labelList = aDecoder.decodeObject(forKey: "labelList") as? [AnyObject]
         library = aDecoder.decodeObject(forKey: "library") as? String
         playInfo = aDecoder.decodeObject(forKey: "playInfo") as? [VSPlayInfo]
         playUrl = aDecoder.decodeObject(forKey: "playUrl") as? String
         played = aDecoder.decodeObject(forKey: "played") as? Bool
         promotion = aDecoder.decodeObject(forKey: "promotion") as? AnyObject
         provider = aDecoder.decodeObject(forKey: "provider") as? VSProvider
         rawWebUrl = aDecoder.decodeObject(forKey: "rawWebUrl") as? String
         releaseTime = aDecoder.decodeObject(forKey: "releaseTime") as? Int
         remark = aDecoder.decodeObject(forKey: "remark") as? AnyObject
         shareAdTrack = aDecoder.decodeObject(forKey: "shareAdTrack") as? AnyObject
         subtitles = aDecoder.decodeObject(forKey: "subtitles") as? [AnyObject]
         tags = aDecoder.decodeObject(forKey: "tags") as? [VSTag]
         title = aDecoder.decodeObject(forKey: "title") as? String
         titlePgc = aDecoder.decodeObject(forKey: "titlePgc") as? AnyObject
         type = aDecoder.decodeObject(forKey: "type") as? String
         waterMarks = aDecoder.decodeObject(forKey: "waterMarks") as? AnyObject
         webAdTrack = aDecoder.decodeObject(forKey: "webAdTrack") as? AnyObject
         webUrlForWeibo = aDecoder.decodeObject(forKey: "webUrlForWeibo") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    func encode(with aCoder: NSCoder)
	{
		if adTrack != nil{
			aCoder.encode(adTrack, forKey: "adTrack")
		}
		if author != nil{
			aCoder.encode(author, forKey: "author")
		}
		if campaign != nil{
			aCoder.encode(campaign, forKey: "campaign")
		}
		if category != nil{
			aCoder.encode(category, forKey: "category")
		}
		if collected != nil{
			aCoder.encode(collected, forKey: "collected")
		}
		if consumption != nil{
			aCoder.encode(consumption, forKey: "consumption")
		}
		if coverBlurred != nil{
			aCoder.encode(coverBlurred, forKey: "coverBlurred")
		}
		if coverForDetail != nil{
			aCoder.encode(coverForDetail, forKey: "coverForDetail")
		}
		if coverForFeed != nil{
			aCoder.encode(coverForFeed, forKey: "coverForFeed")
		}
		if coverForSharing != nil{
			aCoder.encode(coverForSharing, forKey: "coverForSharing")
		}
		if dataType != nil{
			aCoder.encode(dataType, forKey: "dataType")
		}
		if date != nil{
			aCoder.encode(date, forKey: "date")
		}
		if descriptionField != nil{
			aCoder.encode(descriptionField, forKey: "description")
		}
		if descriptionEditor != nil{
			aCoder.encode(descriptionEditor, forKey: "descriptionEditor")
		}
		if descriptionPgc != nil{
			aCoder.encode(descriptionPgc, forKey: "descriptionPgc")
		}
		if duration != nil{
			aCoder.encode(duration, forKey: "duration")
		}
		if favoriteAdTrack != nil{
			aCoder.encode(favoriteAdTrack, forKey: "favoriteAdTrack")
		}
		if id != nil{
			aCoder.encode(id, forKey: "id")
		}
		if idx != nil{
			aCoder.encode(idx, forKey: "idx")
		}
		if label != nil{
			aCoder.encode(label, forKey: "label")
		}
		if labelList != nil{
			aCoder.encode(labelList, forKey: "labelList")
		}
		if library != nil{
			aCoder.encode(library, forKey: "library")
		}
		if playInfo != nil{
			aCoder.encode(playInfo, forKey: "playInfo")
		}
		if playUrl != nil{
			aCoder.encode(playUrl, forKey: "playUrl")
		}
		if played != nil{
			aCoder.encode(played, forKey: "played")
		}
		if promotion != nil{
			aCoder.encode(promotion, forKey: "promotion")
		}
		if provider != nil{
			aCoder.encode(provider, forKey: "provider")
		}
		if rawWebUrl != nil{
			aCoder.encode(rawWebUrl, forKey: "rawWebUrl")
		}
		if releaseTime != nil{
			aCoder.encode(releaseTime, forKey: "releaseTime")
		}
		if remark != nil{
			aCoder.encode(remark, forKey: "remark")
		}
		if shareAdTrack != nil{
			aCoder.encode(shareAdTrack, forKey: "shareAdTrack")
		}
		if subtitles != nil{
			aCoder.encode(subtitles, forKey: "subtitles")
		}
		if tags != nil{
			aCoder.encode(tags, forKey: "tags")
		}
		if title != nil{
			aCoder.encode(title, forKey: "title")
		}
		if titlePgc != nil{
			aCoder.encode(titlePgc, forKey: "titlePgc")
		}
		if type != nil{
			aCoder.encode(type, forKey: "type")
		}
		if waterMarks != nil{
			aCoder.encode(waterMarks, forKey: "waterMarks")
		}
		if webAdTrack != nil{
			aCoder.encode(webAdTrack, forKey: "webAdTrack")
		}
		if webUrlForWeibo != nil{
			aCoder.encode(webUrlForWeibo, forKey: "webUrlForWeibo")
		}

	}

}
