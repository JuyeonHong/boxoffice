//
//  MovieInfoCollectionViewCell.swift
//  cgv
//
//  Created by 홍주연 on 09/04/2019.
//  Copyright © 2019 hongjuyeon. All rights reserved.
//

import UIKit

class MovieInfoCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var indicatorView: UIView!
    @IBOutlet weak var movieTabLabel: UILabel!
    
    var item: String!{
        didSet{
            setUI()
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setUI(){
        movieTabLabel.text = item
    }
}
