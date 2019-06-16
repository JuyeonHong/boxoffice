//
//  ViewController.swift
//  cgv
//
//  Created by 홍주연 on 01/04/2019.
//  Copyright © 2019 hongjuyeon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var movieDataCollectionView: UICollectionView!
    @IBOutlet weak var movieInfoCollectionView: UICollectionView!
    
    @IBOutlet weak var movieInfoTableView: UITableView!
    
    var selectedIndex: Int?
    
    var movie: [Movie] = []
    //var collectionViewIndexPath: IndexPath!

    override func viewDidLoad() { //모든 View들이 준비됨. 즉 View객체들이 메모리에 올라감.
        super.viewDidLoad()
        movie = Movie.createDummy()
        movieInfoTableView.dataSource = self
        movieInfoTableView.delegate = self
        //collectionViewIndexPath = IndexPath(item: 0, section: 0)

    }
    
}

extension ViewController: UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.movieDataCollectionView{
            return movie.count
        }
        else if collectionView == self.movieInfoCollectionView{
            return 4
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == self.movieDataCollectionView{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MovieShowingCell", for: indexPath) as! MovieDataCollectionViewCell
            cell.sendMovieDataDelegate = self
            cell.sendMovieInfoDelegate = self
            cell.item = movie[indexPath.item]
            return cell
        }
        else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MovieInfoCell", for: indexPath) as! MovieInfoCollectionViewCell
            cell.item = movie[0].tab[indexPath.row]
            return cell
        }
    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        if collectionView == self.movieInfoCollectionView{
//            return CGSize(width: 60, height: 25)
//        }
//        return CGSize(width: 0, height: 0)
//    }
}

extension ViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        //https://stackoverflow.com/questions/28325277/how-to-set-cell-spacing-and-uicollectionview-uicollectionviewflowlayout-size-r
        //customTabbar cell line spacing 
        if collectionView == self.movieInfoCollectionView{
            return UIEdgeInsets(top: 0, left: 40, bottom: 0, right: 40)
        }
        
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
}

extension ViewController: UICollectionViewDelegate{
    //    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    //        collectionViewIndexPath = indexPath
    //        print(indexPath.item)
    //    }
}

extension ViewController: SendMovieDataDelegate{
    func sendMovieData(movieData: Movie) {
        let vc = MovieReservationViewController.create()
        vc.item = movieData
        navigationController?.pushViewController(vc, animated: true)
    }
}

extension ViewController: SendMovieInfoDelegate, UITableViewDelegate{
    
    func sendMovieInfo(selectedData: Movie) {
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
       return movie[0].infoHeader.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = movieInfoTableView.dequeueReusableCell(withIdentifier: "MovieInfoCell", for: indexPath) as! MovieInfoTableViewCell
        
        
        cell.detail = movie[0].infoDetail[indexPath.row]
        cell.header = movie[0].infoHeader[indexPath.row]
        
        if let `selectedIndex` = selectedIndex {
            cell.detail = movie[selectedIndex].infoDetail[indexPath.row]
            cell.header = movie[selectedIndex].infoHeader[indexPath.row]
        }
        
        return cell
    }
    
}
