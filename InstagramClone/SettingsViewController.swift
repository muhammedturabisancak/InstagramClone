//
//  SettingsViewController.swift
//  InstagramClone
//
//  Created by Muhammed Turabi Sancak on 15.07.2024.
//

import UIKit
import Firebase

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
  @IBAction func buttonClicked(_ sender: Any) {
    do{
      try Auth.auth().signOut()
      self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }catch{
      print("error")
    }
  }
  
}
