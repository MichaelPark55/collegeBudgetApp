//
//  categoryModel.swift
//  collegeBudgetApp
//
//  Created by Mikey Park on 11/28/20.
//  Copyright © 2020 Mikey Park. All rights reserved.
//

import Foundation

class categoryModel {
    
    var data = ["Entertainment", "Clothes", "Transportation", "Gifts/Donations", "Housing", "Subscriptions", "Food", "Household items/supplies", "Personal", "Misc"]
    
    func getCount() -> Int
    {
        return data.count
    }
    
    func getCategoryName(loc: Int) -> String
    {
        
        return data[loc]
    }
}
