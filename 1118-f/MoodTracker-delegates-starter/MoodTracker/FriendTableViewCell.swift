//
//  FriendTableViewCell.swift
//  MoodTracker
//
//  Created by Nikolas Burk on 01/11/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

protocol FriendTableViewCellDelegate {
  func updateFriend(friend: Friend)
}

class FriendTableViewCell: UITableViewCell {
  
//  var moodTableViewController: MoodTableViewController!
  var delegate: FriendTableViewCellDelegate!
  
  // outlets
  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var moodDescriptionLabel: UILabel!
  @IBOutlet weak var moodButton: UIButton!
  
  // string constants describing the mood
  static let happyString = "Oh happy day..."
  static let badString = "Get off my lawn!!!"
  static let mediumString = "Well, I don't really care."
  static let moodDescriptions: [Mood: String] = [
    Mood.happy: happyString,
    Mood.medium: mediumString,
    Mood.angry: badString
  ]
  
  // stores the friend that is represented in this cell
  var friend: Friend! {
    didSet {
      nameLabel.text = friend.name
      moodDescriptionLabel.text = FriendTableViewCell.moodDescriptions[friend.mood]
      moodButton.setTitle(friend.mood.rawValue, for: .normal)
    }
  }
  
  // update mood and label
  @IBAction func moodButtonPressed(_ sender: AnyObject) {
//    moodTableViewController.updateFriend(friend: friend) // send friend to MoodTableViewController
    delegate.updateFriend(friend: friend)
  }

  
}

