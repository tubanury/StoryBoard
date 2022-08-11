//
//  MapCollectionViewCell.swift
//  storyBoardWorks
//
//  Created by Tuba N. Yıldız on 23.07.2022.
//

import UIKit

class MapCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    
    func setup(with valueCell: ValueCell){
        icon.image = valueCell.icon
        nameLabel.text = valueCell.title
        valueLabel.text = valueCell.value
        
    }
    
}
