//
//  FeedInfoTableViewController.swift
//  Reddak
//
//  Created by Devin Morgan on 8/18/16.
//  Copyright © 2016 Devin Morgan. All rights reserved.
//

import UIKit

class FeedInfoTableViewController: UITableViewController {
    
    let purpleColor = UIColor.init(red: 110.0/255.0, green: 93.0/255.0, blue: 168.0/255.0, alpha: 1)
    let greyColor = UIColor.init(red: 85.0/255.0, green: 85.0/255.0, blue: 85.0/255.0, alpha: 1)
    let lightGreyColor = UIColor.init(white: 240.0/255.0, alpha: 1.0)

    let textIndent: CGFloat = 15.0
    let headerSectionheight: CGFloat = 42.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController!.navigationBar.tintColor = UIColor.whiteColor()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 3
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        switch section {
        case 0: // Description Section
            return 0
        case 1: // Statis & Info
            return 3
        case 2: // Membership Status
            return 1
        default:
            return 0
        }
        
    }

    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let boldFont = UIFont.boldSystemFontOfSize(18)
        let sectionHeaderLabelHeight: CGFloat = 22.0
        
        let label = UILabel.init(frame: CGRectMake(textIndent, 10, self.tableView.frame.size.width, sectionHeaderLabelHeight))
        label.textColor = purpleColor
        label.font = boldFont
        label.backgroundColor = UIColor.clearColor()
        
        switch section {
        case 0:
            label.text = "Description"
        case 1:
            label.text = "Stats & Info"
        case 2:
            label.text = "Membership Status"
        default:
            label.text = "Default"
        }
        
        let mainView = UIView.init(frame: CGRectMake(0, 0, self.tableView.frame.size.width, headerSectionheight))
        mainView.addSubview(label)
        
        return mainView
    }
    
    override func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let normalFont = UIFont.init(name: "System-Regular", size: 14)
        let textContent = "This is the main feed for MIT. Every MIT member can view and make posts here."
        
        let textView = UITextView.init(frame: CGRectMake(textIndent, 0, self.tableView.frame.size.width - 2*textIndent, 30.0))
        textView.textColor = greyColor
        textView.font = normalFont
        textView.text = textContent
        textView.backgroundColor = UIColor.clearColor()
        textView.textContainer.lineFragmentPadding = 0
        textView.textContainerInset = UIEdgeInsetsZero
        textView.editable = false
        
        switch section {
        case 0:
            let mainView = UIView.init(frame: CGRectMake(0, 0, self.tableView.frame.size.width, 30.0))
            mainView.addSubview(textView)
            return mainView
        default:
            let view = UIView.init()
            view.backgroundColor = UIColor.clearColor()
            return view
        }

    }
    
    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if (section > 0 ) {
            return headerSectionheight
        }
        return headerSectionheight - 5
    }
    
    override func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        switch section {
        case 0:
            return 30.0
        default:
            return 10.0
        }
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var reuseIdentifier = ""

        switch (indexPath.section,indexPath.row) {
        case (1,0):
            reuseIdentifier = "MembersCount"
        case (1,1):
            reuseIdentifier = "NumberOfPosts"
        case (1,2):
            reuseIdentifier = "FeedStartDate"
        case (2,0):
            reuseIdentifier = "JoinGroup"
        default:
            reuseIdentifier = "ReuseIdentifier"
        }

        return tableView.dequeueReusableCellWithIdentifier(reuseIdentifier, forIndexPath: indexPath)
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
