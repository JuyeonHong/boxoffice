//
//  ViewController.swift
//  cgv
//
//  Created by 홍주연 on 01/04/2019.
//  Copyright © 2019 hongjuyeon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var movieInfoTableView: UITableView!
    
    var selectedIndex: Int?
    
    var movie: [Moviedata] = []
    //var collectionViewIndexPath: IndexPath!
    let movieInfoHeader = ["개봉", "등급", "장르", "국가", "러닝타임", "배급"]

    
    override func viewDidLoad() { //모든 View들이 준비됨. 즉 View객체들이 메모리에 올라감.
        super.viewDidLoad()
        movie = Moviedata.createDummy()
        movieInfoTableView.dataSource = self
        //collectionViewIndexPath = IndexPath(item: 0, section: 0)

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movie.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MovieShowingCell", for: indexPath) as! MovieDataCollectionViewCell
        cell.sendMovieDataDelegate = self
        
        cell.sendMovieInfoDelegate = self
        
        cell.item = movie[indexPath.item]
        
        
        //처음 로드됐을 때 뿌릴 애들에 대한 처리
        
        return cell
        
    }
    
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        collectionViewIndexPath = indexPath
//        print(indexPath.item)
//    }
    
}

extension ViewController: SendMovieDataDelegate{
    func sendMovieData(movieData: Moviedata) {
        let vc = MovieReservationViewController.create()
        vc.item = movieData
        navigationController?.pushViewController(vc, animated: true)
    }
}

extension ViewController: SendMovieInfoDelegate, UITableViewDelegate{
    
    func sendMovieInfo(selectedData: Moviedata) {
            selectedIndex = movie.firstIndex {
                $0.dDay == selectedData.dDay &&
                $0.name == selectedData.name &&
                $0.rating == selectedData.rating &&
                $0.image == selectedData.image &&
                $0.infoDetail == selectedData.infoDetail
        }
        movieInfoTableView.reloadData()
    }
}


extension ViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieInfoHeader.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = movieInfoTableView.dequeueReusableCell(withIdentifier: "MovieInfoCell", for: indexPath) as! MovieInfoTableViewCell
        
        cell.header = movieInfoHeader[indexPath.row]
        
        if let `selectedIndex` = selectedIndex {
            cell.item = movie[selectedIndex].infoDetail[indexPath.row]
        }
        
        return cell
    }
    
}
