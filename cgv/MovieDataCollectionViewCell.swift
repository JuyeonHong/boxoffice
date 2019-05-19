//
//  CollectionViewCell.swift
//  cgv
//
//  Created by 홍주연 on 01/04/2019.
//  Copyright © 2019 hongjuyeon. All rights reserved.
//

import UIKit

protocol SendMovieDataDelegate: class {
    func sendMovieData(movieData: Moviedata)
}

protocol SendMovieInfoDelegate: class {
    func sendMovieInfo(selectedData: Moviedata)
}

class MovieDataCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var movieRatingLabel: UILabel!
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var movieDdayLabel: UILabel!
    @IBOutlet weak var movieImageView: UIImageView!
    
    @IBOutlet weak var reservationButton: UIButton!
    @IBOutlet weak var movieSelectButton: UIButton!

    
    weak var sendMovieDataDelegate: SendMovieDataDelegate?
    
    weak var sendMovieInfoDelegate: SendMovieInfoDelegate?
    
    
    var item: Moviedata! {
        didSet {
            setUI()
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        reservationButton.layer.cornerRadius = 5
    }
    
    func setUI() {
        movieNameLabel.text = item.name
        movieRatingLabel.text = item.rating
        movieDdayLabel.text = item.dDay
        movieImageView.image = UIImage(named: item.image)
    }
    
    @IBAction func reservationButtonClicked(_ sender: Any){
        sendMovieDataDelegate?.sendMovieData(movieData: item)
    }
    
    @IBAction func movieSelectButtonClicked(_ sender: Any) {
        sendMovieInfoDelegate?.sendMovieInfo(selectedData: item)
    }
    
}
    

