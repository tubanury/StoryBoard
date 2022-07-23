//
//  ViewController.swift
//  storyBoardWorks
//
//  Created by Tuba N. Yıldız on 21.07.2022.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

   
    
    @IBOutlet weak var wewalkLogin: UILabel!
    @IBOutlet weak var appleLogin: UILabel!
    
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailText.delegate = self
        passwordText.delegate = self

        
        
        
        
        
        //setup'a al
        // Do any additional setup after loading the view.
        self.navigationController?.navigationBar.isHidden = true
        self.emailText.layer.masksToBounds = true
        self.passwordText.layer.masksToBounds = true
        self.loginButton.layer.masksToBounds = true
        self.emailText.layer.cornerRadius = 15
        self.loginButton.layer.cornerRadius = 15
        self.passwordText.layer.cornerRadius = 15
        // Create Attachment
        let imageAttachment = NSTextAttachment()
        imageAttachment.image = UIImage(named:"login")
        // Set bound to reposition
        let imageOffsetY: CGFloat = -5.0
        imageAttachment.bounds = CGRect(x: 0, y: imageOffsetY, width: imageAttachment.image!.size.width, height: imageAttachment.image!.size.height)
        // Create string with attachment
        let attachmentString = NSAttributedString(attachment: imageAttachment)
        // Initialize mutable string
        var completeText = NSMutableAttributedString(string: "")
        // Add image to mutable string
        completeText.append(attachmentString)
        // Add your text to mutable string
        var textAfterIcon = NSAttributedString(string: "Login with apple")
        completeText.append(textAfterIcon)
        self.appleLogin.textAlignment = .left
        self.appleLogin.attributedText = completeText
        
        
        completeText = NSMutableAttributedString(string: "")
        // Add image to mutable string
        completeText.append(attachmentString)
        textAfterIcon = NSAttributedString(string: "Login with wewalk account")
        completeText.append(textAfterIcon)
        self.wewalkLogin.textAlignment = .left
        self.wewalkLogin.attributedText = completeText


    }

 
    @IBAction func loginButtonTapped(_ sender: Any) {
        if let textE = self.emailText.text, textE.isEmpty {
            return
        } else if let textP = self.passwordText.text, textP.isEmpty {
            return
        }
        let textE = self.emailText.text
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let mapView = storyboard.instantiateViewController(withIdentifier: "MapViewController") as? MapViewController{
            mapView.textEmail = textE ?? ""
            self.navigationController?.pushViewController(mapView, animated: false)
        }
    }
}

