//
//  UserTableViewCell.swift
//  Mixtape
//
//  Created by Eva Marie Bresciano on 7/25/16.
//  Copyright © 2016 Eva Bresciano. All rights reserved.
//

import UIKit
import CoreData

class UserTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // MARK: - Outlets
    
    @IBOutlet weak var usernameLabel: UILabel!
    
    @IBOutlet weak var followButton: UIButton!
      
    enum OtherUser {
        case following
        case notFollowing
    }
    
    var otherUser = OtherUser.notFollowing
    
    func updateFollowButton() {
        if otherUser  == .following {
            otherUser = .notFollowing
            followButton.setTitle("Follow", forState: .Normal)
        } else {
            otherUser = .following
            followButton.setTitle("Unfollow", forState: .Normal)
        }
    }
    
    func updateWithUser(user: User) {
        usernameLabel.text = user.username
        
    }
    
    // MARK: - Actions
   
    @IBAction func followButtonTapped(sender: AnyObject) {
        updateFollowButton()
    }
}
