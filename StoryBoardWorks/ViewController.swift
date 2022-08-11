//
//  ViewController.swift
//  storyBoardWorks
//
//  Created by Tuba N. Yıldız on 21.07.2022.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var EmailTextField: GenericTextField!
    @IBOutlet weak var PasswordTextField: GenericTextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.navigationController?.navigationBar.isHidden = true

        EmailTextField.delegate = self
        PasswordTextField.delegate = self
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if let textE = self.EmailTextField.text, textE.isEmpty {
            return false
        } else if let textP = self.PasswordTextField.text, textP.isEmpty {
            return false
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "login"{
            let destinationVC = segue.destination as! MapViewController
            destinationVC.textEmail = self.EmailTextField.text ?? "test"
        }
    
    }
    
}

