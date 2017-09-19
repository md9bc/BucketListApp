//
//  BucketItem.swift
//  BucketListApp
//
//  Created by Erin Alleva on 9/17/17.
//  Copyright © 2017 Erin Alleva. All rights reserved.
//

import Foundation

class BucketItem {
    
    var name: String
    var date: Date
    var itemText: String
    var complete: Bool
    
    init(name: String, date: Date, itemText: String, complete: Bool) {
        self.name = name
        self.date = date
        self.itemText = itemText
        self.complete = false
    }
    
}

extension BucketItem
{
    public class func getMockData() -> [BucketItem]
    {
        return [
            //need to fix date... how to use it for mock?
            BucketItem(name: "Go to LOTL", date: Date() , itemText: "GET LIT", complete: false),
            BucketItem(name: "Have fun", date: Date(), itemText: "I guess I did this first year", complete: true),
            BucketItem(name: "Get a job", date: Date(), itemText: "hopefully a good one", complete: false),
            BucketItem(name: "Get some sleep", date: Date(), itemText: "like 8 hours or something", complete: false),
            BucketItem(name: "go to Roto sing", date: Date(), itemText: "listen to singing", complete: false)
        ]
    }
}
