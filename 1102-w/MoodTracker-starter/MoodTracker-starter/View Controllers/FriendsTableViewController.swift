//
//  FriendsTableViewController.swift
//  MoodTracker-starter
//
//  Created by Nikolas Burk on 02/11/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

class FriendsTableViewController: UITableViewController {
  
  static let happyString = "Oh happy day..."
  static let badString = "Get off my lawn!!!"
  static let mediumString = "Well, I don't really care."
  
  static var friendArray = [
    Friend(name: "John", mood: .happy),
    Friend(name: "Jack", mood: .happy),
    Friend(name: "Sarah", mood: .happy),
    Friend(name: "Jenny", mood: .happy)
  ]
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }

  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return FriendsTableViewController.friendArray.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    print(indexPath.row)
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "FriendTableViewCell") as! FriendTableViewCell
    
    let friend = FriendsTableViewController.friendArray[indexPath.row]
    cell.nameLabel.text = friend.name
    
    cell.friendTableViewController = self
    
    cell.moodButton.tag = indexPath.row
    switch FriendsTableViewController.friendArray[cell.moodButton.tag].mood{
    case .angry:
        cell.moodDescriptionLabel.text = FriendsTableViewController.badString
    case .medium:
        cell.moodDescriptionLabel.text = FriendsTableViewController.mediumString
    case .happy:
        cell.moodDescriptionLabel.text = FriendsTableViewController.happyString
    }
    cell.moodButton.titleLabel?.text = friend.mood.rawValue
    cell.moodButton.setTitle(friend.mood.rawValue, for: .normal)
    
    
    return cell
  }
    
    func updateMood(friend: Friend){
        
        
        
//        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendTableViewCell") as! FriendTableViewCell
//        switch friendArray[index].mood{
//        case .angry:
//            friendArray[index].mood = .medium
//            cell.moodDescriptionLabel.text = FriendsTableViewController.mediumString
//        case .medium:
//            cell.moodDescriptionLabel.text = FriendsTableViewController.mediumString
//        case .happy:
//            cell.moodDescriptionLabel.text = FriendsTableViewController.happyString
//        }
        
    }
    
    private func nextMood(mood: Mood) -> Mood {
    switch mood {
    case .happy:
        return .medium
    case .medium:
        return .angry
    case .angry:
        return .happy
    }
    
    }
    
    
}
