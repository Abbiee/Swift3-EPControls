# Swift3-EPControls
This project helps to make use of the common class EPControl to integrate controls easily through the bits of code.

For choosing or taking photo

        
        EPControls.sharedInstance.takeOrChoosePhoto(self) { (selectedImage) in
            self.myImage.image = selectedImage
        }
        
        
    

   For implementing action sheet
   
    
        
        EPControls.sharedInstance.openActionSheetFromViewController(self, title: "Action Sheet", message: "This is action sheet test message", buttonsTitlesArray: ["Login", "Logout"]) { (alertController, index) in
            print("index = \(index)")
            
        }

        
    
    
    
    For implementing alert view
    
   
        
        
        EPControls.sharedInstance.openAlertViewFromViewController(self, title: "Logout Alert", message: "Are you sure you want to logout?", buttonsTitlesArray: ["Cancel","Ok"]) { (alertController, index) in
            print("index = \(index)")
        }

    
    
    For implementing mail composer
    
   
        EPControls.sharedInstance.openMailComposerInViewController(["naveen.rana@appster.in"], viewcontroller: self) { (result, error) in
            print(result)
        }
        
    
    
    For implementing alert text field
    
   
        
        
        EPControls.sharedInstance.openAlertViewWithTextFieldFromViewController(self, title: "TextField demo", message: "This is textfield test", placeHolder: "Enter your email", isSecure: false, buttonsTitlesArray: ["Cancel","Submit"], isNumberKeyboard: false) { (alertController, index, text) in
            print(text)
        }
    
