//
//  ViewController.swift
//  InstagramClone
//
//  Created by Muhammed Turabi Sancak on 15.07.2024.
//

import UIKit
import Firebase
import FirebaseAuth

class ViewController: UIViewController {

  @IBOutlet weak var emailText: UITextField!
  @IBOutlet weak var passwordtEXT: UITextField!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    
  }

  
  
  
  @IBAction func signInClicked(_ sender: Any) {
    
    if emailText.text != "" && passwordtEXT.text != ""{
      
      Auth.auth().signIn(withEmail: emailText.text!, password: passwordtEXT.text!) { (authdata,error) in
        if error != nil{
          self.makeAlert(titleInput: "Error!", messageInput: error?.localizedDescription ?? "Error")
          
        }else{
          self.performSegue(withIdentifier: "toFeedVC", sender: nil)
        }
      }
      
    }else{
      makeAlert(titleInput: "Error", messageInput: "Username/Password")
    }
    
  }

  
  @IBAction func signUpClicked(_ sender: Any) {
    
    if emailText.text != "" && passwordtEXT.text != ""{
      Auth.auth().createUser(withEmail: emailText.text!, password: passwordtEXT.text!){ (authdata, error) in
        
        if error != nil{
          self.makeAlert(titleInput: "Error!", messageInput: error?.localizedDescription ?? "Error")
        }else{
          self.performSegue(withIdentifier: "toFeedVC", sender: nil)
        }
      }
    }else{
      makeAlert(titleInput: "Error", messageInput: "Username/Password")
    }
  }
  
  func makeAlert(titleInput:String, messageInput:String){
    let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
    let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
    alert.addAction(okButton)
    self.present(alert, animated: true, completion: nil)
  }
}
