//
//  DataManager.swift
//  Selfigramm
//
//  Created by Artsiom Sazonau on 05.04.17.
//  Copyright © 2017 Arts Corp. All rights reserved.
//

import UIKit


class DataManager {
    
    var photoCollection = [UIImage]()
    var imageNums = [Int](1...10)
    
    //Singleton
    static let sharedInstance = DataManager()
    private init() {
        for i in imageNums {
            photoCollection.append(UIImage(named: "tema_\(i).jpg")!)

        }
        
    }
    
    // MARK: - API
    func getFeed() -> Any {
        return ["a", "b"]
    }
    
    func getProfile() -> Any {
        return [0, 1]
    }
    
    private func loadProfile() -> Any {
        return [0, 1]
    }
    
    func addPhoto(image:UIImage) -> Void {
        photoCollection.insert(image, at: 0)
    }
    
    func getPhoto(number:Int) -> UIImage{
        return photoCollection[number]
    }
}
