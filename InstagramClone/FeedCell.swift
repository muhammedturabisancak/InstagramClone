//
//  FeedCell.swift
//  InstagramClone
//
//  Created by Muhammed Turabi Sancak on 19.07.2024.
//

import UIKit
import Firebase

class FeedCell: UITableViewCell {
  
  @IBOutlet weak var userEmailLabel: UILabel!
  @IBOutlet weak var commentLabel: UILabel!
  @IBOutlet weak var userImageView: UIImageView!
  @IBOutlet weak var likeLabel: UILabel!
  @IBOutlet weak var documentLabel: UILabel!
  
  
  override func awakeFromNib() {
    super.awakeFromNib()
    // Initialization code
  }
  
  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
    
    // Configure the view for the selected state
  }
  

  @IBAction func likeButtonClicked(_ sender: Any) {
    
    let fireStoreDatabase = Firestore.firestore()
    
    if let likeCount = Int(likeLabel.text!){
      
      let liketStore = ["likes" : likeCount + 1] as [String : Any]
      
      fireStoreDatabase.collection("Posts").document(documentLabel.text!).setData(liketStore, merge: true)
    }
    
    
  }
  
    
    
    
    
  }
  
  
  
  
