//
//  ViewController.swift
//  collegeBudgetApp
//
//  Created by Mikey Park on 11/27/20.
//  Copyright © 2020 Mikey Park. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    var transactionList: TransactionList = TransactionList()
    
    
    @IBOutlet weak var dailyAmount: UILabel!
    
    
    let managedObjectContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    var fetchedResults = [TransactionEntity]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        fetchCoreDataEntities()
    }
    
    /**
    Grabs the ColumnEntities from the managed object context, and updates the Column List to
     reflect them.
    */
    func fetchCoreDataEntities() {
        // create a fetch request for all of our ColumnEntities
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "TransactionEntity")
        
        // send the fetch request to the managedObjectContext and grab
        // the results as a list of ColumnEntities
        fetchedResults = ((try? managedObjectContext.fetch(fetchRequest)) as? [TransactionEntity])!
        
        // clear out all of the columns we have just in case we are holding
        // on to old ones
        //transactionList.removeAll()
        
        // for each column that we have in the core data store, add a column to our list
        /*
        for entity in fetchedResults {
            if let building = entity.transID, let type = entity.transPhoto {
                transactionList.add(Transaction(category: String, title: String, date: String, dollarAmount: Double, photo: Data, Id: String))
            }
            
        }
        */
    }


}

