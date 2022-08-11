//
//  MapViewController.swift
//  storyBoardWorks
//
//  Created by Tuba N. Yıldız on 22.07.2022.
//

import UIKit
class MapViewController: UIViewController {

    
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var FavoritesButton: GenericButton!
    @IBOutlet weak var EmailButton: GenericButton!
    
   
    var textEmail = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        
        self.EmailButton.setTitle(self.textEmail, for: .normal)
       
        collectionView.dataSource = self
    }
  
}

extension MapViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ValueCells.count
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MapCollectionViewCell", for: indexPath) as! MapCollectionViewCell
        
        cell.setup(with: ValueCells[indexPath.row])
        cell.nameLabel.textColor = UIColor.gray

        if (indexPath.item != 0)  && (indexPath.item % 3 == 0 || indexPath.item % 2 == 0) {
            cell.layer.addBorder(edge: .top, color: .lightGray, thickness: 1)
        }
        if indexPath.item % 2 == 0 {
            cell.layer.addBorder(edge: .right, color: .lightGray, thickness: 1)
        }
        return cell
    }
}

