//
//  ProductTableViewController.swift
//  EasyMarket3
//
//  Created by Ewoud Hermans on 13/11/15.
//  Copyright © 2015 Ewoud Hermans. All rights reserved.
//

import UIKit

class ProductTableViewController: UITableViewController {

    var photos = [Photo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var newPhoto = Photo(name: "Nike Air schoenen", filename: "nike", notes: "Mooi")
        photos.append(newPhoto)
        
        newPhoto = Photo(name: "NY Yankees cap, nieuw", filename: "yankees", notes: "Mooi")
        photos.append(newPhoto)
        
        newPhoto = Photo(name: "Goedkope heren sokken", filename: "sokken", notes: "Mooi")
        photos.append(newPhoto)
        
        newPhoto = Photo(name: "Rode Oakley bril", filename: "Oakley", notes: "Mooi")
        photos.append(newPhoto)
        
        newPhoto = Photo(name: "Blauwe nieuwe levi's broek", filename: "levi", notes: "Mooi")
        photos.append(newPhoto)
    
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return photos.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("tableCell", forIndexPath: indexPath)

        var currentPhoto = photos[indexPath.row]
        cell.textLabel?.text = currentPhoto.name
        
        var myImage = UIImage(named: currentPhoto.filename)
        cell.imageView?.image = myImage
        
        
        return cell
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "For Sale"
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        var secondScene = segue.destinationViewController as! PhotoViewController
        // Pass the selected object to the new view controller.
        if let indexPath = self.tableView.indexPathForSelectedRow {
            let selectedPhoto = photos[indexPath.row]
            secondScene.currentPhoto = selectedPhoto
        }
    }
}
