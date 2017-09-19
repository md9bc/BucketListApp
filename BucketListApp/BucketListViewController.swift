//
//  ViewController.swift
//  BucketListApp
//
//  Created by Erin Alleva on 9/17/17.
//  Copyright © 2017 Erin Alleva. All rights reserved.
//

import UIKit

class BucketListViewController: UITableViewController {
    
    //@IBOutlet weak var myTableView: UITableView!
    
    
    //var myBucketItems = [BucketItem]()
    
    private var myBucketItems = BucketItem.getMockData();
    
    /*func loadSampleItems() {
        let item1 = BucketItem(name: "My Awesomeness", date: Date(), itemText: "Here is some stuff!", complete: false)
        myBucketItems += [item1]
        let item2 = BucketItem(name: "More Items!", date: Date(), itemText: "Here is some stuff!", complete: false)
        myBucketItems += [item2]
    }
 */
    
    
    //how many lists there should be
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myBucketItems.count
    }
 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell_todo", for : indexPath)
        
        if indexPath.row < myBucketItems.count {
            let item = myBucketItems[indexPath.row]
            cell.textLabel?.text = item.name
            
            let accessory: UITableViewCellAccessoryType = item.complete ? .checkmark : .none
            cell.accessoryType = accessory
        }
        
        return cell
    }
    
    /*
    // Override to show what each cell should have in it based on the note in the list
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Table view cells are reused and should be dequeued using a cell identifier.
        let cellIdentifier = "BucketListViewCell"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! BucketListViewCell
        
        // Fetches the appropriate note for the data source layout.
        let item = myBucketItems[indexPath.row]
        
        cell.itemNameLabel.text = item.name
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        let convertedDate = dateFormatter.string(from: item.date)
        cell.dateLabel.text = convertedDate
        
        return cell
    }
    */
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let index = indexPath[1]
        let currentItem = myBucketItems[index]
        let alertController = UIAlertController(title: currentItem.name, message: currentItem.itemText + "\nsaved at: " + currentItem.date.description, preferredStyle: .alert)
        
        let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(defaultAction)
        
        present(alertController, animated: true, completion: nil)
        
    }
    
    //    // Override to support editing the table view if you wanted just a delete button
    //    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
    //
    //        if editingStyle == .delete {
    //            // Delete the row from the data source
    //            notes.remove(at: indexPath.row)
    //            // Delete the row from the view
    //            tableView.deleteRows(at: [indexPath], with: .fade)
    //        } else if editingStyle == .insert {
    //            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    //        }
    //    }
    
    // Lets you add various buttons when you swipe
    override func tableView(_ tableView: UITableView, editActionsForRowAt: IndexPath) -> [UITableViewRowAction]? {
        let done = UITableViewRowAction(style: .normal, title: "Done") { action, index in
            
            
        }
        done.backgroundColor = .green
        
        let edit = UITableViewRowAction(style: .normal, title: "Edit") { action, index in
            
            
        }
        edit.backgroundColor = .orange
        
        
        return [done, edit]
    }
    
    
    
    
    // MARK: Segue
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell_todo")
        self.title = "Bucket List Items"
        //self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "customcell")
        //loadSampleItems()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

