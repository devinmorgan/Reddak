//
//  TopicFeedTableViewController.swift
//  Reddak
//
//  Created by Devin Morgan on 8/19/16.
//  Copyright © 2016 Devin Morgan. All rights reserved.
//

import UIKit

class TopicFeedTableViewController: UITableViewController {

    // MARK: - Housekeeping Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Data Source

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
        
        else if indexPath.section == 1 {
            return 450
        }

        else {
            return 120
        }
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let reuseIdentifier = "test"

        // make a new post
        if indexPath.section == 0 {
            let cell = CreateNewPostTableViewCell.init(reuseIdentifier: reuseIdentifier)
            
            return cell
        }
            
        // image post
        else if indexPath.section == 1 {
            let cell = FeedPostTableViewCell.init(delegate: self, reuseIdentifier: reuseIdentifier, timestampText: "10h ago", postText: "this is the content of the whole post right now", voteCount: 9, imageName: "MockPostPhoto")
            
            let tapGesture = UITapGestureRecognizer.init(target: self, action: #selector(viewImageInModal(_:)))
            cell.addGestureToImage(tapGesture)
            
            return cell
        }

        // text post
        else {
            let cell = FeedPostTableViewCell.init(delegate: self, reuseIdentifier: reuseIdentifier, timestampText: "10h ago", postText: "this is the content of the whole post right now", voteCount: 9, imageName: nil)
            
            return cell
        }

    }
    
    // MARK: - Responsive Functions
    
    func viewImageInModal(postCell: FeedPostTableViewCell) {
        print("view image in modal")
        self.performSegueWithIdentifier("InspectImageSegue", sender: postCell)
    }

    // MARK: - Navigation

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let destinationVC = segue.destinationViewController
        
        switch segue.identifier! {
        case "InspectImageSegue":
            if let tapGesture = sender as? UITapGestureRecognizer {
                if let imageView = tapGesture.view as? UIImageView {
                    if let imageModalVC = destinationVC as? ImageInspectorViewController {
                        imageModalVC.mainImage = imageView.image
                    }
                }
            }
            break
        default:
            break
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }

}
