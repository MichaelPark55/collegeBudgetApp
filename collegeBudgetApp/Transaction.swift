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
    var category: String?
    var title: String?
    var date: String?
    var dollarAmount: Double?
    var photo: Data?
    var Id: String?
    
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
    init(t_cg: String, t_tl: String, t_dt: String, t_dAm: Double, t_pt: Data, t_Id: String) {
        category = t_cg
        title = t_tl
        date = t_dt
        dollarAmount = t_dAm
        photo = t_pt
        Id = t_Id
    }


    //test code
}
