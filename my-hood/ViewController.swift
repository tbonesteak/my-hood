//
//  ViewController.swift
//  my-hood
//
//  Created by Jon on 10/16/15.
//  Copyright © 2015 Jon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var posts = [Post]() //Each time we create a post, we're going to add it to the array
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self  // This can also be done in the storyboard by clicking and dragging
        tableView.dataSource = self // This can also be done in the storyboard by clicking and dragging
        
        var post = Post(imagePath: "", title: "Post 1", description: "Post 1 description")
        var post2 = Post(imagePath: "", title: "Post 2", description: "This is a post of no significance")
        var post3 = Post(imagePath: "", title: "Post 3", description: "This is the 3rd and most important description")
        
        posts.append(post)
        posts.append(post2)
        posts.append(post3)
        
        tableView.reloadData() // calls numberOfSectionsInTableView and numberOfRowsInSection
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let post = posts[indexPath.row]
        if let cell = tableView.dequeueReusableCellWithIdentifier("PostCell") as? PostCell {  // We say as PostCell because its giving us a UITableViewCell, so we're changing it
            cell.configureCell(post) // updates the cell with fresh data
            return cell
        } else {                    // If we are unable to get a cell from the dequeue resuable cell, we create a new one
            let cell = PostCell()
            cell.configureCell(post)
            return cell
        }
        
    }
    
    func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 87.0
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count  // The total amount of cells should equal the amount of posts
    }
    
}

