//
//  Value.swift
//  storyBoardWorks
//
//  Created by Tuba N. Yıldız on 23.07.2022.
//

import Foundation
import UIKit

struct ValueCell {
    let icon: UIImage
    let title: String
    let value: String
}

let ValueCells: [ValueCell] = [
    ValueCell(icon: UIImage(named: "distance")! , title: "Distance", value: "6,12 KM"),
    ValueCell(icon: UIImage(named: "calorie")! , title: "Calorie", value: "1726"),
    ValueCell(icon: UIImage(named: "duration")! , title: "Duration", value: "3:39:12"),
    ValueCell(icon: UIImage(named: "climb")! , title: "Climb", value: "7 m")    
]
