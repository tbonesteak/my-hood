//
//  PostCell.swift
//  my-hood
//
//  Created by Jon on 10/17/15.
//  Copyright © 2015 Jon. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {
    
    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var descLbl: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configureCell(post: Post) {
        titleLbl.text = post.title
        descLbl.text = post.postDesc
    }

}
