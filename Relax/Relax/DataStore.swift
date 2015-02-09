//
//  DataStore.swift
//  Relax
//
//  Created by Ryan Arana on 2/9/15.
//  Copyright (c) 2015 PDX-iOS. All rights reserved.
//

import Foundation

class DataStore {

    // MARK: Activities

    class func activitiesPath() -> String {
        return NSBundle.mainBundle().pathForResource("DefaultActivities", ofType: "plist")!
    }

    class func loadActivities() -> [Activity] {
        if let arr = NSArray(contentsOfFile: activitiesPath()) as? [AnyObject] {
            return arr.map({ (t:AnyObject?) -> Activity in
                if let title = t as? String {
                    return Activity(title: title)
                }
                return Activity(title: "")
            })
        }
        return [Activity]()
    }

    class func addActivity(activity: Activity) {
        // TODO: Implement me!
    }

    class func removeActivity(activity: Activity) {
        // TODO: Implement me!
    }


    // MARK: History Items

    class func historyItemsPath() -> String {
        return NSBundle.mainBundle().pathForResource("HistoryItems", ofType: "plist")!
    }

    class func loadHistoryItems() -> [HistoryItem] {
        // TODO: Implement me!

        return [HistoryItem]()
    }

    class func addHistoryItem(item: HistoryItem) {
        // TODO: Implement me!
    }

    class func removeHistoryItem(item: HistoryItem) {
        // TODO: Implement me!
    }
}