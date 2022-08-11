//
//  GenericTextField.swift
//  StoryBoardWorks
//
//  Created by Tuba N. Yıldız on 11.08.2022.
//

import UIKit

@IBDesignable class GenericTextField: UITextField {

    @IBInspectable var cornerRadius: CGFloat = 20{
        didSet {
                  layer.cornerRadius = cornerRadius
        }
    }
}
