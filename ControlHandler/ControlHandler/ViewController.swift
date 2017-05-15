//
//  ViewController.swift
//  ControlHandler
//
//  Created by admin on 15/05/17.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var myImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    @IBAction func choosePhoto(_ sender: Any) {
        
        EPControls.sharedInstance.takeOrChoosePhoto(self) { (selectedImage) in
            self.myImage.image = selectedImage
        }
        
        
    }

   
    @IBAction func actionSheet(_ sender: Any) {
        
        EPControls.sharedInstance.openActionSheetFromViewController(self, title: "Action Sheet", message: "This is action sheet test message", buttonsTitlesArray: ["Login", "Logout"]) { (alertController, index) in
            print("index = \(index)")
            
        }

        
    }
    
    
    
    @IBAction func alertView(_ sender: Any) {
        
        
        EPControls.sharedInstance.openAlertViewFromViewController(self, title: "Logout Alert", message: "Are you sure you want to logout?", buttonsTitlesArray: ["Cancel","Ok"]) { (alertController, index) in
            print("index = \(index)")
        }

    }
    
    
    @IBAction func mailComposerAction(_ sender: Any) {
        
        EPControls.sharedInstance.openMailComposerInViewController(["naveen.rana@appster.in"], viewcontroller: self) { (result, error) in
            print(result)
        }
        
    }
    
    @IBAction func alertTextField(_ sender: Any) {
        
        
        EPControls.sharedInstance.openAlertViewWithTextFieldFromViewController(self, title: "TextField demo", message: "This is textfield test", placeHolder: "Enter your email", isSecure: false, buttonsTitlesArray: ["Cancel","Submit"], isNumberKeyboard: false) { (alertController, index, text) in
            print(text)
        }
    }
        
    
}

