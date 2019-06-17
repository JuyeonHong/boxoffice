//
//  MovieInfoTableViewCell.swift
//  cgv
//
//  Created by 홍주연 on 09/04/2019.
//  Copyright © 2019 hongjuyeon. All rights reserved.
//

import UIKit

class MovieInfoTableViewCell: UITableViewCell {

    @IBOutlet weak var movieInfoDetailLabel: UILabel!
    @IBOutlet weak var movieInfoHeaderLabel: UILabel!
    
    var header: String!{
        didSet{
            setHeaderUI()
        }
    }

    var detail: String! {
        didSet {
            setDetailUI()
        }
    }

    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setDetailUI() {
        movieInfoDetailLabel.text = detail
    }
    
    func setHeaderUI(){
        movieInfoHeaderLabel.text = header
    }

}
