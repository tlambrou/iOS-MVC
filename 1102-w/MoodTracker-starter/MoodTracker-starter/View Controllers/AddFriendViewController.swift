//
//  AddFriendViewController.swift
//  MoodTracker-starter
//
//  Created by Nikolas Burk on 09/11/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

class AddFriendViewController: UIViewController {
    
    @IBOutlet weak var moodSegmentedControl: UISegmentedControl!
    @IBOutlet weak var nameTextField: UITextField!
    
    // MARK: View Controller Lifecycle
    
    var friendTableViewController: FriendsTableViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    // MARK: Actions
    
    @IBAction func saveButtonPressed(_ sender: AnyObject) {
        // TODO: save the added friend here
        
        print(moodSegmentedControl.selectedSegmentIndex)
        
        if nameTextField.hasText == true {
            friendTableViewController.addFriend(name: nameTextField.text!, index: moodSegmentedControl.selectedSegmentIndex)
            dismissViewController()
        }
    }
    
    @IBAction func cancelButtonPressed(_ sender: AnyObject) {
        dismissViewController()
    }
    
    
    // MARK: Helpers
    
    func dismissViewController() {
        presentingViewController?.dismiss(animated: true)
    }
    
}
