//
//  TransactionList.swift
//  collegeBudgetApp
//
//  Created by Mikey Park on 11/27/20.
//  Copyright © 2020 Mikey Park. All rights reserved.
//

import Foundation

class TransactionList {
    // the current transaction being viewed
    var currentTrans: Int = 0
    
    // the number of transactions there are
    var numOfTrans: Int = 0
    
    // a list of tuples, just for ease of grabbing the right transactions because there will be a search function
    
    var TransactionList:[Transaction] = []
    
    init() {
        
    }
    
    
    func getCount() -> Int {
        return TransactionList.count
    }
    
    func getTransObject(item:Int) -> Transaction {
        return TransactionList[item]
    }
    
    func removeTransObject(item:Int) {
        TransactionList.remove(at: item)
    }
    
    func addTransObject(category:String, title: String, date: String, amount: Double, photo: Data, Id: String) -> Transaction{
        let t = Transaction(t_cg: category, t_tl: title, t_dt: date, t_dAm: amount, t_pt: photo, t_Id: Id)
        TransactionList.append(t)
        return t
    }
    
}
