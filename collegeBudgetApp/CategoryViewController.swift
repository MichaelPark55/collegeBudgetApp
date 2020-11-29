//
//  CategoryViewController.swift
//  collegeBudgetApp
//
//  Created by Mikey Park on 11/27/20.
//  Copyright © 2020 Mikey Park. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var categoryTable: UITableView!
    
    var categoryList:categoryModel = categoryModel()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           // calling the model to get the fruit count
           return categoryList.getCount()
       }
    
    func tableView(_ tableView: UITableView,cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = categoryTable.dequeueReusableCell(withIdentifier: "categoryCell", for: indexPath)
        
        cell.textLabel?.text = categoryList.getCategoryName(loc: indexPath.row)
        
        
        return cell;
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let selectedIndex: IndexPath = self.categoryTable.indexPath(for: sender as! UITableViewCell)!
        
        let category = categoryList.getCategoryName(loc: selectedIndex.row)
        
        
        if(segue.identifier == "addView"){
            if let CategoryViewController: AddViewController = segue.destination as? AddViewController {
                
                CategoryViewController.selectedCategory = category
            }
        }
        
    }

    
}
