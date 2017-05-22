//
//  profileViewController.swift
//  Selfigramm
//
//  Created by Artsiom Sazonau on 19.02.17.
//  Copyright © 2017 Arts Corp. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, UICollectionViewDelegateFlowLayout,UICollectionViewDataSource {

    @IBOutlet var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let size = view.frame.width / 3
        
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: size, height: size)
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 0
        layout.sectionInset = UIEdgeInsetsMake(-64, 0, 0, 0)
        collectionView.setCollectionViewLayout(layout, animated: false)
        
        collectionView.backgroundColor = collectionView.backgroundColor?.withAlphaComponent(0)
    }

    override func viewDidAppear(_ animated: Bool) {
        collectionView.reloadData()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 9
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! ProfilePhotoCollectionViewCell
        cell.imageView.image = DataManager.sharedInstance.getPhoto(number: indexPath.row)
//        cell.imageView.image = UIImage(named: "tema_\(indexPath.row+1).jpg")
        return cell
    }
}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


