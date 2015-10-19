//
//  AddPostVC.swift
//  my-hood
//
//  Created by Jon on 10/18/15.
//  Copyright © 2015 Jon. All rights reserved.
//

import UIKit

class AddPostVC: UIViewController {

    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var postImg: UIImageView!
    
    @IBOutlet weak var descField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        postImg.layer.cornerRadius = postImg.frame.size.width / 2 // gives the image a rounded corner
        postImg.clipsToBounds = true // anything that goes outside the bondaries gets clipped off
    }

    @IBAction func addPicBtnPressed(sender: UIButton!) {
        sender.setTitle("", forState: .Normal) // Once the user has added a picture, make the title empty.
    }
    
    @IBAction func makePostBtnPressed(sender: AnyObject) {
    }
    
    @IBAction func cancelBtnPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil) // When you press the cancel button, it takes you to the other screen. nil means we don't care what happens after it's been dismissed.
    }

}
