//
//  MapViewController.swift
//  storyBoardWorks
//
//  Created by Tuba N. Yıldız on 22.07.2022.
//

import UIKit
import MapKit
class MapViewController: UIViewController {

    //@IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var favButton: UIButton!
    @IBOutlet weak var emailButton: UIButton!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var startButton: UIButton!
    
    @IBOutlet weak var map: MKMapView!
    
    var textEmail = ""
    //let image = UIImage
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        self.emailButton.setTitle(self.textEmail, for: .normal)
        
        self.favButton.setImage(UIImage(named: "star"), for: .normal)
        self.emailButton.layer.masksToBounds = true
        self.favButton.layer.masksToBounds = true
        self.emailButton.layer.cornerRadius = 20
        self.favButton.layer.cornerRadius = 20
        self.startButton.layer.masksToBounds = true
        self.startButton.layer.cornerRadius = 20
        self.map.layer.masksToBounds = true
        self.map.layer.cornerRadius = 20
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
//        let border = CALayer()
//        border.borderColor = CGColor.init(red: 0, green: 1, blue: 0, alpha: 1)
//        border.borderWidth = 1
//        border.frame = CGRect(x: 0 - 1, y: 0 - 1, width: cell.frame.size.width + 1, height: cell.frame.size.height - 1)
//        cell.layer.addSublayer(border)
//        cell.layer.masksToBounds = true
        
        //cell.layer.borderWidth = 1
        //cell.layer.borderColor = CGColor.init(red: 0, green: 1, blue: 0, alpha: 1)
        //cell.layer.addBorder(edge: .bottom, color: .black, thickness: 1)
        
        if (indexPath.item != 0)  && (indexPath.item % 3 == 0 || indexPath.item % 2 == 0) {
            cell.layer.addBorder(edge: .top, color: .lightGray, thickness: 1)
        }
        if indexPath.item % 2 == 0 {
            cell.layer.addBorder(edge: .right, color: .lightGray, thickness: 1)
        }
        return cell
    }
}


extension CALayer {

    func addBorder(edge: UIRectEdge, color: UIColor, thickness: CGFloat) {

        let border = CALayer()

        switch edge {
        case .top:
            border.frame = CGRect(x: 0, y: 0, width: frame.width, height: thickness)
        case .bottom:
            border.frame = CGRect(x: 0, y: frame.height - thickness, width: frame.width, height: thickness)
        case .left:
            border.frame = CGRect(x: 0, y: 0, width: thickness, height: frame.height)
        case .right:
            border.frame = CGRect(x: frame.width - thickness, y: 0, width: thickness, height: frame.height)
        default:
            break
        }
        border.backgroundColor = color.cgColor
        addSublayer(border)
        }
}
