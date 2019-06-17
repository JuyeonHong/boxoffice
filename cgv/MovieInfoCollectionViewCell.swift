//
//  MovieInfoCollectionViewCell.swift
//  cgv
//
//  Created by 홍주연 on 09/04/2019.
//  Copyright © 2019 hongjuyeon. All rights reserved.
//

import UIKit

class MovieInfoCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var tabLabel: UILabel!
    @IBOutlet weak var indicatorView: UIView!
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
        tabLabel.textColor = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)
        indicatorView.isHidden = true
    }
    
    func setUI(){
        tabLabel.text = item
    }
}
