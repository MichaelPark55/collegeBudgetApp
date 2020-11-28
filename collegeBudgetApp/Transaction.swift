//
//  Transaction.swift
//  collegeBudgetApp
//
//  Created by Mikey Park on 11/27/20.
//  Copyright © 2020 Mikey Park. All rights reserved.
//

import Foundation

class Transaction {
    //THE VARIABLES
    //the category of the transaction
    var category: String
    
    //the title of the transaction
    var title: String

    //the date of the transaction
    var date: String
    
    //the dollar amount of the transaction
    var dollarAmount: Double
    
    //the photo of the transaction (optional)
    var photo: Data
    
    //the transaction ID
    var Id: String
    
    /**
            Initializes a new transaction with the given specifications
     
                -Paramters:
                    - Category: category of the transaction
                    - Title: title of the transaction
                    - Date: date of the transaction
                    - Dollar Amount: dollar amount of the transaction
                    - Photo: photo of the transaction (optional)
                    - Id: transaction Id
                -Returns: a newly initliazed transaction
     */
    init(category: String, title: String, date: String, dollarAmount: Double, photo: Data, Id: String) {
        self.category = category
        self.title = title
        self.date = date
        self.dollarAmount = dollarAmount
        self.photo = photo
        self.Id = Id
    }
    
    
    //Getter method for the transaction category
    //Returns: The type of transactions stored as one of the category category
    
    func getCategory() -> String {
        return self.category
    }
    
    //Getter method for the transaction title
    //Returns: The type of transactions stored as one of the category title
    
    func getTitle() -> String {
        return self.title
    }
    
    //Getter method for the transaction date
    //Returns: The type of transactions stored as one of the category date
    
    func getDate() -> String {
        return self.date
    }
    
    //Getter method for the transaction dollar
    //Returns: The type of transactions stored as one of the category dollar
    
    func getDollarAmount() -> Double {
        return self.dollarAmount
    }
    
    //Getter method for the transaction photo
    //Returns: The type of transactions stored as one of the category photo
    
    func getPhoto() -> Data {
        return self.photo
    }
    
    //Getter method for the transaction ID
    //Returns: The type of transactions stored as one of the category ID
    
    func getID() -> String {
        return self.Id
    }
    
}
