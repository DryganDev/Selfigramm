//
//  PhotoPostTableViewCell.swift
//  Selfigramm
//
//  Created by Artsiom Sazonau on 13.03.17.
//  Copyright © 2017 Arts Corp. All rights reserved.
//

import UIKit

class PhotoPostTableViewCell: UITableViewCell, UITextFieldDelegate{

    @IBOutlet var userFullName: UILabel!
    @IBOutlet var timeLabel: UILabel!
    @IBOutlet var avatarImage: UIImageView!
    @IBOutlet var postImage: UIImageView!
    @IBOutlet var postText: UILabel!
    @IBOutlet var bigLikeOutlet: UIButton!
    @IBOutlet var commentOutlet: UIButton!
    @IBOutlet var sumCommentOutlet: UILabel!
    @IBOutlet var sumLikeOutlet: UILabel!
    @IBOutlet var secondLastCommentOutlet: UILabel!
    @IBOutlet var addCommentTextField: UITextField!
    @IBOutlet var lastCommentOutlet: UILabel!
    
    var likeButtonTapped:(() -> Void)? = nil
    var commentButtonTapped:(() -> Void)? = nil
    var commentArray = [String]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

        avatarImage.maskAsRounded()
        bigLikeOutlet.isHidden = true
        addCommentTextField.delegate = self
        sumCommentOutlet.text = "Всего коментариев - \(commentArray.count)"
        lastCommentOutlet.text = commentArray.last
//        secondLastCommentOutlet.text = commentArray
    }

    func updateWithPhotoData (data:PhotoData) {
        userFullName.text = data.userName!
        sumLikeOutlet.text = String(data.likes!)
    }

    public func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        
        commentArray.append(addCommentTextField.text!)
        addCommentTextField.resignFirstResponder()
        addCommentTextField.text = ""
        print("commentArray - \(commentArray)")
        
        return true
    }
    @IBAction func commentTapped(_ sender: UIButton) {
        print("PP.commentTapped")
        print(sender.tag)
        print(sumCommentOutlet.text!)
        if let commentButtonTapped = self.commentButtonTapped {
            commentButtonTapped()
        }
    }
    
    @IBAction func likeTapped(_ sender: UIButton) {
        
        bigLikeOutlet.isHidden = false
        
        UIView.animate(withDuration: 2, animations: {
            self.bigLikeOutlet?.alpha = 0
        }, completion: { finished in })
        print("PP.likeTapped")
        print(sender.tag)
        print(sumLikeOutlet.text!)
        if let likeButtonTapped = self.likeButtonTapped {
            likeButtonTapped()
        }
    }

    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
