//
//  ChecklistItem.swift
//  GetThingsDone
//
//  Created by Mário Silva on 12/02/15.
//  Copyright (c) 2015 Mário Silva. All rights reserved.
//

import Foundation

class ChecklistItem {
    var text = ""
    var checked = false
    
    func toggleChecked() {
        checked = !checked
    }
}