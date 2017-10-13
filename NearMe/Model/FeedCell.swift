//
//  FeedCell.swift
//  NearMe
//
//  Created by Mandy Chen on 10/11/17.
//  Copyright © 2017 ycyteam. All rights reserved.
//

import UIKit

class FeedCell: UITableViewCell {

    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var feedContentView: UIView!
    @IBOutlet weak var feedImageView: UIImageView!
    @IBOutlet weak var feedLabel: UILabel!
    @IBOutlet weak var timestamp: UILabel!
    @IBOutlet weak var likeCountLabel: UILabel!
    @IBOutlet weak var avatarView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        cellView.clipsToBounds = true
        cellView.layer.cornerRadius = 5
        
        avatarView.image = UIImage(named: "avatar")
        avatarView.clipsToBounds = true
        avatarView.layer.cornerRadius = 30
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
