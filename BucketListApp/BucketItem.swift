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
            BucketItem(name: "Milk", date: Date() , itemText: "Buy milk", complete: false),
            BucketItem(name: "Chocolate", date: Date(), itemText: "Buy chocolate", complete: false),
            BucketItem(name: "Light bulb", date: Date(), itemText: "Buy light", complete: false)
        ]
    }
}
