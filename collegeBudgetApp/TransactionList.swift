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
    
    var list: [(name: String, trans: Transaction)] = [(String, Transaction)]()
    
    /**
            Adds a new transaction to the list
                - Parameters:
                    -newTransaction: the transaction we are adding
     
     */
    func add(_ newTrans: Transaction) {
        list.append((newTrans.getID(), newTrans))
        numOfTrans += 1
    }
    
    /**
    Deletes the transaction currently being viewed
    */
    func delete() -> Bool {
        if (numOfTrans != 0) {
            list.remove(at: currentTrans)
            numOfTrans -= 1
            return true
        }
        return false
    }
    
    /**
    Iterates to the next transaction available, if it exists
    
    - Returns:
        - an optional transaction that comes after the current column
            being viewed
    */
    func getNext() -> Transaction? {
        if (currentTrans >= (numOfTrans - 1)) {
            return nil
        }
        else {
            currentTrans += 1
            return list[currentTrans].trans
        }
    }
    
    /**
    Iterates to the previous column available, if it exists
    
    - Returns:
        - an optional transaction that comes before the current transaction
            being viewed
    */
    func getPrevious() -> Transaction? {
        if (currentTrans <= 0) {
            return nil
        }
        else {
            currentTrans -= 1
            return list[currentTrans].trans
        }
    }
    
    /**
    A convenience function to grab the first transaction in the list, if it exists
    
    - Returns:
        - an optional transaction that is the first in the list
    */
    func getFirst() -> Transaction? {
        if let first = list.first {
            currentTrans = 0
            return first.trans
        } else {
            return nil
        }
    }
    
    /**
    Searches for the Transactino with the give ID
    
     - Parameters:
        - toFind: the ID of the Transaction being searched for
     
    - Returns:
        - an optional Transaction that matches the parameter building name
    */
    func search(id toFind: String) -> Transaction? {
        for i in list.indices {
            if (list[i].name == toFind) {
                currentTrans = i
                return list[i].trans
            }
        }
        return nil //didn't find it
    }
    
    /**
    Convenience function to print all of the transactions in the list
    */
    func printColumns() {
        for item in list {
            print("\(item.name.uppercased()):")
            print("Category: \(item.trans.getCategory())")
            print("Date: \(item.trans.getDate())")
            print("Dollar Amount: \(item.trans.getDollarAmount())")
            print("Trans ID: \(item.trans.getID())")
        }
    }
    
    /**
    Removes all transactions in the list and resets the currentTransaction index
    */
    func removeAll() {
        currentTrans = 0
        numOfTrans = 0
        list.removeAll()
    }
}
