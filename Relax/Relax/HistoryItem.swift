//
//  HistoryItem.swift
//  Relax
//
//  Created by Ryan Arana on 2/9/15.
//  Copyright (c) 2015 PDX-iOS. All rights reserved.
//

import Foundation

class HistoryItem: NSCoding {
    let activity: Activity
    let rating: Double
    let comments: String
    let loggedAt: NSDate

    required init(coder aDecoder: NSCoder) {
        // TODO: Replace all of this code with an actual implementation
        assert(false, "Unimplemented")
        self.activity = Activity(title: "Unimplemented")
        self.rating = 0
        self.comments = ""
        self.loggedAt = NSDate()
    }

    func encodeWithCoder(aCoder: NSCoder) {
        // TODO: Implement me!
        assert(false, "Unimplemented")
    }
}
