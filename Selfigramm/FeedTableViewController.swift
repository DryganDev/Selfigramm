//
//  FeedTableViewController.swift
//  Selfigramm
//
//  Created by Artsiom Sazonau on 13.03.17.
//  Copyright © 2017 Arts Corp. All rights reserved.
//

import UIKit

class FeedTableViewController: UITableViewController {

    var state = false
    var testTime = [22,24,12,15,14,13,11,10,9,8,7,6,5,4,3,2,1]
    var testPostText = ["это Первый #пост", "это Второй #пост","это Третий #пост","это Третий #пост","это Третий #пост","это Третий #пост","это Третий #пост","это Третий #пост","это Третий #пост","это Третий #пост","это Третий #пост","это Третий #пост","это Третий #пост","это Третий #пост","это Третий #пост"]
    
    var photos:[PhotoData] = [PhotoData(userName: "vika", likes: 50),PhotoData(userName: "Masha", likes: 100),PhotoData(userName: "Vera", likes: 150)]
    


    override func viewDidLoad() {
        super.viewDidLoad()
        for _ in 0..<(DataManager.sharedInstance.photoCollection.count - 1) {
            photos.insert(PhotoData(userName: "TestName", likes: 50) , at: 0)
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
//        return photos.count
        return DataManager.sharedInstance.photoCollection.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! PhotoPostTableViewCell
        
        //Actions
        
        cell.commentButtonTapped = {
            print("TVC.commentButtonTapped")
            cell.addCommentTextField.becomeFirstResponder()
        }

        cell.likeButtonTapped = {
            print(self.state)
            if !(self.state) {
                self.photos[indexPath.row].likes! = self.photos[indexPath.row].changeLikes(currentLikes: self.photos[indexPath.row].likes!, newLikes: 1) { (currentLikes, newLikes) -> Int in
                    return currentLikes + newLikes
                }
                print(self.photos[indexPath.row].likes!)
                self.state = true
            }  else {
                self.photos[indexPath.row].likes! = self.photos[indexPath.row].changeLikes(currentLikes: self.photos[indexPath.row].likes!, newLikes: 1) { (currentLikes, newLikes) -> Int in
                    return currentLikes - newLikes
                }
                print(self.photos[indexPath.row].likes!)
                self.state = false
            }

        }
        
        
        cell.selectionStyle = UITableViewCellSelectionStyle.none
        cell.updateWithPhotoData(data: photos[indexPath.row])
        cell.timeLabel.text = String(testTime[indexPath.row])
        cell.postText.text = testPostText[indexPath.row]
        cell.postImage.image = DataManager.sharedInstance.photoCollection[indexPath.row]

        return cell
    }


}
