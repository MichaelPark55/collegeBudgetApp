//
//  TransactionEntity+CoreDataProperties.swift
//  collegeBudgetApp
//
//  Created by Mikey Park on 11/27/20.
//  Copyright © 2020 Mikey Park. All rights reserved.
//
//

import Foundation
import CoreData


public class TransactionEntity: NSManagedObject {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<TransactionEntity> {
        return NSFetchRequest<TransactionEntity>(entityName: "TransactionEntity")
    }

    @NSManaged public var transCategory: String?
    @NSManaged public var transDollarAmount: Double
    @NSManaged public var transDate: String?
    @NSManaged public var transPhoto: Data?
    @NSManaged public var transTitle: String?
    @NSManaged public var transID: String?
    
    func set(transCategory: String, transDollarAmount: Double, transDate: String, transPhoto: Data, transTitle: String, transID: String) {
        
        self.transCategory = transCategory
        self.transDollarAmount = transDollarAmount
        self.transDate = transDate
        self.transPhoto = transPhoto
        self.transTitle = transTitle
        self.transID = transID
        
    }

}
