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
    
    var friendArray = [
        Friend(name: "John", mood: .happy),
        Friend(name: "Jack", mood: .angry),
        Friend(name: "Sarah", mood: .medium),
        Friend(name: "Jenny", mood: .happy)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendTableViewCell") as! FriendTableViewCell
        
        let friend = friendArray[indexPath.row]
        cell.nameLabel.text = friend.name
        
        cell.friendTableViewController = self
        
        cell.moodButton.tag = indexPath.row
        switch friendArray[cell.moodButton.tag].mood{
        case .angry:
            cell.moodDescription.text = FriendsTableViewController.badString
        case .medium:
            cell.moodDescription.text = FriendsTableViewController.mediumString
        case .happy:
            cell.moodDescription.text = FriendsTableViewController.happyString
        }
        cell.moodButton.titleLabel?.text = friend.mood.rawValue
        cell.moodButton.setTitle(friend.mood.rawValue, for: .normal)
        
        
        return cell
    }
    
    func updateMood(friend: Friend){
        print("updateMood succeeded")
        friend.mood = nextMood(mood: friend.mood)
        tableView.reloadData()
        
        
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
    
    func addFriend(name: String, index: Int) {
        
        var mood: Mood
        
        switch index {
        case 0: mood = .happy
        case 1: mood = .medium
        case 2: mood = .angry
        default: mood = .happy
            print("Mood initialize didn't work")
        }
        let friend = Friend(name: name, mood: mood)
        friendArray.append(friend)
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let addFriendViewController = segue.destination as! AddFriendViewController
        addFriendViewController.friendTableViewController = self
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
