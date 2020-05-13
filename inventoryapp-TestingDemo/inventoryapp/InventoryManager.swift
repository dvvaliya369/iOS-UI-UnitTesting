//
//  InventoryManager.swift
//  inventoryapp
//
//  Created by Dharmendra Valiya on 05/13/20.
//  Copyright © 2020 test. All rights reserved.
//

import UIKit

class InventoryManager: NSObject {
    static var items:[InventoryItem] = []
    
    @discardableResult
    override init() {
        InventoryManager.items.append(InventoryItem(name: "Highlander", units: 50, manufacturerName: "Toyota", dateAdded: "11/20/2020"))
        InventoryManager.items.append(InventoryItem(name: "Altima", units: 40, manufacturerName: "Nissan", dateAdded:"11/21/2020"))
        InventoryManager.items.append(InventoryItem(name: "Focus", units: 70, manufacturerName: "Ford", dateAdded:"12/6/2020"))
        InventoryManager.items.append(InventoryItem(name: "Impreza", units: 10, manufacturerName: "Subaru", dateAdded:"12/5/2020"))
    }
    
    static func add(item:InventoryItem){
        InventoryManager.items.append(item)
    }
    
    static func delete(index:Int){
        InventoryManager.items.remove(at: index)
    }
}
