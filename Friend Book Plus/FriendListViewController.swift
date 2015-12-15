//
//  ViewController.swift
//  Friend Book Plus
//
//  Created by dev on 12/8/15.
//  Copyright © 2015 ciccio boles. All rights reserved.
//

import UIKit

class FriendListViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var tableView: UITableView!
    
    var friends = [Friend]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        createFriends()
    
    self.tableView.dataSource = self
    self.tableView.delegate = self
    
    }//End VDL
    
    func createFriends() {
        //["Jeff", "Sammy", "Frankie", "Nelly"]
        let jeff = Friend()
        jeff.name = "Jeff"
        jeff.phoneNumber = "415-567-4628"
        jeff.birthday = "July 18th"
        jeff.picture = UIImage(named: "images-1")!
        self.friends.append(jeff)
        
        
        let sammy = Friend()
        sammy.name = "Sammy"
        sammy.phoneNumber = "415-567-4628"
        sammy.birthday = "July 18th"
        sammy.picture = UIImage(named: "images-2")!
        self.friends.append(sammy)
        
        let frankie = Friend()
        frankie.name = "Frankie"
        frankie.phoneNumber = "415-567-4628"
        frankie.birthday = "July 18th"
        frankie.picture = UIImage(named: "images-3")!
        self.friends.append(frankie)
        
        let nelly = Friend()
        nelly.name = "Nelly"
        nelly.phoneNumber = "415-567-4628"
        nelly.birthday = "July 18th"
        nelly.picture = UIImage(named: "images-4")!
        self.friends.append(nelly)
        
        
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.friends.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let friend = self.friends[indexPath.row]
        cell.textLabel!.text = friend.name
        return cell
    }


    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        let friend = self.friends[indexPath.row]
        self.performSegueWithIdentifier("detailSegue", sender: friend)
    }
    
    

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let detailVC = segue.destinationViewController as! FriendDetailViewController
        detailVC.friend = sender as! Friend
    }




}//END VC

