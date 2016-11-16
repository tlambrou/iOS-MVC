//
//  FriendTableViewCell.swift
//  MoodTracker-starter
//
//  Created by Nikolas Burk on 02/11/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

class FriendTableViewCell: UITableViewCell {
    
    var friendTableViewController: FriendsTableViewController!
  
    
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var moodButton: UIButton!
    
    @IBOutlet weak var moodDescription: UILabel!
    
    // stores the friend that is displayed in this cell
    var friend: Friend? {
        didSet {
            nameLabel.text = friend?.name
            moodButton.setTitle(friend?.mood.rawValue, for: .normal)
        }
    }
    
  @IBAction func moodButtonPressed(_ sender: UIButton) {
    print(#line, #function)
    friend = friendTableViewController.friendArray[sender.tag]
    friendTableViewController.updateMood(friend: friend!)
    
  }


  

  
  
}
