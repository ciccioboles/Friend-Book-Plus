//
//  FriendDetailViewController.swift
//  Friend Book Plus
//
//  Created by dev on 12/8/15.
//  Copyright © 2015 ciccio boles. All rights reserved.
//

import UIKit

class FriendDetailViewController: UIViewController {

    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var pictureImageView: UIImageView!
    
    var friend = Friend()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.nameLabel.text = self.friend.name
        self.phoneLabel.text = self.friend.phoneNumber
        self.birthdayLabel.text = self.friend.birthday
        self.pictureImageView.image = self.friend.picture
        
        
        
    }//End VDL

   









}//END VC
