//
//  Activity.swift
//  Relax
//
//  Created by Ryan Arana on 2/7/15.
//  Copyright (c) 2015 PDX-iOS. All rights reserved.
//

import Foundation

struct Activity {
    let title: String
}

class Activities {
    class func load(path: String) -> [Activity] {
        if let arr = NSArray(contentsOfFile: path) as? [AnyObject] {
            return arr.map({ (t:AnyObject?) -> Activity in
                if let title = t as? String {
                    return Activity(title: title)
                }
                return Activity(title: "")
            })
        }
        return [Activity]()
    }
}
