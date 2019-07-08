//
//  MovieReviewTableViewCell.swift
//  cgv
//
//  Created by 홍주연 on 08/07/2019.
//  Copyright © 2019 hongjuyeon. All rights reserved.
//

import UIKit

class MovieReviewTableViewCell: UITableViewCell {

    @IBOutlet weak var contentLabel: UILabel!
    
    var content: String!{
        didSet{
            setContentUI()
        }
    }

    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setContentUI(){
        contentLabel.text = content
    }

}
