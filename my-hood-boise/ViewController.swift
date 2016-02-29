//
//  ViewController.swift
//  my-hood-boise
//
//  Created by Gil Aguilar on 2/28/16.
//  Copyright © 2016 redeye-dev. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var posts = [Post]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        var post1 = Post(imagePath: "", title: "Post 1 test", description: "Post 1 description test")
        var post2 = Post(imagePath: "", title: "Post 2 test", description: "Post 2 description test")
        var post3 = Post(imagePath: "", title: "Post 3 test", description: "Post 3 description test")
        
        posts.append(post1)
        posts.append(post2)
        posts.append(post3)
        
        tableView.reloadData()
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let post = posts[indexPath.row]
        if let cell = tableView.dequeueReusableCellWithIdentifier("PostCell") as? PostCell {
            cell.configureCell(post)
            return cell
            
        } else {
            let cell = PostCell()
            cell.configureCell(post)
            return cell
        }
        
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        return 80.0
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }

}

