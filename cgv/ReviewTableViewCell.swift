//
//  ReviewTableViewCell.swift
//  cgv
//
//  Created by 홍주연 on 24/06/2019.
//  Copyright © 2019 hongjuyeon. All rights reserved.
//

import UIKit

class ReviewTableViewCell: UITableViewCell {

    @IBOutlet weak var audRtLabel: UILabel!
    @IBOutlet weak var likeRtLabel: UILabel!
    @IBOutlet weak var netRtLabel: UILabel!
    
    var audRt: String!{
        didSet{
            setAudRtUI()
        }
    }
    
    var likeRt: String!{
        didSet{
            setlikeRtUI()
        }
    }
    
    var netRt: String!{
        didSet{
            setNetRtUI()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setAudRtUI(){
        audRtLabel.text = audRt
    }
    
    func setlikeRtUI(){
        likeRtLabel.text = likeRt
    }
    
    func setNetRtUI(){
        netRtLabel.text = netRt
    }
    
}
