//
//  TopicFeedTableViewController.swift
//  Reddak
//
//  Created by Devin Morgan on 8/19/16.
//  Copyright © 2016 Devin Morgan. All rights reserved.
//

import UIKit

class TopicFeedTableViewController: UITableViewController {

    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
        return 2
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        default:
            return 2
        }
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {

        if indexPath.section == 0 {
            return 90.0
        }

        else {
            return 126.0
        }
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
//        // make a new post
//        if indexPath.section == 0 {
//            
//        }
//        
//        // existing post
//        if indexPath.section == 1 {
//            
//        }
        let reuseIdentifier = "test"
        let cell = TextPostTableViewCell.init(reuseIdentifier: reuseIdentifier, timestampText: "10h ago", postText: "this is the content of the whole post right now", voteCount: 9)
        
//        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...

        return cell
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
