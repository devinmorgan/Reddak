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
        return 3
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        case 1:
            return 1
        case 2:
            return 1
        default:
            return 0
        }
    }
    
    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView.init()
        view.backgroundColor = UIColor.clearColor()
        return view
    }
    
    override func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0
    }
    
    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 10.0
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {

        if indexPath.section == 0 {
            return 100.0
        }

        else {
            let defaultSpacing: CGFloat = 10
            let heightOfTimestamp: CGFloat = 14
            let heightOfText = ("this is some example text").sizeWithAttributes([NSFontAttributeName:UIFont.systemFontOfSize(12)]).height
            let heightOfBottomSection:CGFloat = 36
            
            return defaultSpacing + heightOfTimestamp + defaultSpacing + 2*heightOfText + defaultSpacing + heightOfBottomSection + defaultSpacing
        }
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let reuseIdentifier = "test"
        var cell: UITableViewCell = UITableViewCell.init(style: UITableViewCellStyle.Default, reuseIdentifier: reuseIdentifier)
        // make a new post
        if indexPath.section == 0 {
            cell = CreateNewPostTableViewCell.init(reuseIdentifier: reuseIdentifier)
        }

        // existing post
        else {
            cell = TextPostTableViewCell.init(reuseIdentifier: reuseIdentifier, timestampText: "10h ago", postText: "this is the content of the whole post right now", voteCount: 9)
        }
        
        
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
