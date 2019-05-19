//
//  MovieReservationViewController.swift
//  cgv
//
//  Created by 홍주연 on 05/04/2019.
//  Copyright © 2019 hongjuyeon. All rights reserved.
//

import UIKit

class MovieReservationViewController: UIViewController {

    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieNameLabel: UILabel!
    
    var item: Moviedata?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        setUI()
    }
    
    func setUI() {
        guard let `item` = self.item else {
            return
        }
        movieNameLabel.text = item.name
        movieImageView.image = UIImage(named: item.image)
    }
    
    
    //****
    static func create() -> MovieReservationViewController {
         let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MovieReservationVC") as! MovieReservationViewController
        return vc
    }

}

