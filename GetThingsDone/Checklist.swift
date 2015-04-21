//
//  Checklist.swift
//  GetThingsDone
//
//  Created by Mário Silva on 23/03/15.
//  Copyright (c) 2015 Mário Silva. All rights reserved.
//

import UIKit

class Checklist: NSObject, NSCoding {
    var name = ""
    var items = [ChecklistItem]()
    
    required init(coder aDecoder: NSCoder) {
        name = aDecoder.decodeObjectForKey("Name") as! String
        items = aDecoder.decodeObjectForKey("Items") as! [ChecklistItem]
        super.init()
    }
    
    init(name: String) {
        self.name = name
        super.init()
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(name, forKey: "Name")
        aCoder.encodeObject(items, forKey: "Items")
    }
    
    func countUncheckedItems() -> Int {
        return reduce(items, 0) { cnt, item in cnt + (item.checked ? 0 : 1) }
    }
    
}
