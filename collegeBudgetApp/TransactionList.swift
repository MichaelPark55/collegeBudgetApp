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
    
    //array
    var entryArray:[Transaction] = []
    
    //dicitonary
    //var TransactionList:[Transaction] = []
    
    var TransactionList = [String: [Transaction]]()
    
    init() {
        let t1 = Transaction(t_cg: "Transporation", t_tl: "Bus Fare", t_dt: "December 1st, 2020", t_dAm: 5.24, t_pt: "", t_Id: "T00001")
        
        entryArray.append(t1)
        
        print(entryArray.capacity)
        
    }
    
    func createEntryDictionary() {
           // for each fruit in the fruit list from the fruits object
           for Transaction in entryArray{
             
               // extract the first letter as a string for the key
               let categoryName = Transaction.category
               
               //make the key
            
            
               // build the fruit object array for each key
    
           }
    }
    
    
    func getCount() -> Int {
        return TransactionList.count
    }
    
    func getTransObject(item:Int) -> Transaction {
        return entryArray[item]
    }
    
    func removeTransObject(item:Int) {
        entryArray.remove(at: item)
    }
    
    func addTransObject(category:String, title: String, date: String, amount: Double, photo: String, Id: String) -> Transaction{
        let t = Transaction(t_cg: category, t_tl: title, t_dt: date, t_dAm: amount, t_pt: photo, t_Id: Id)
        entryArray.append(t)
        return t
    }
    
}
