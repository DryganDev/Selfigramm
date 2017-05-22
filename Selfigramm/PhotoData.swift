//
//  PhotoData.swift
//  Selfigramm
//
//  Created by Artsiom Sazonau on 13.03.17.
//  Copyright © 2017 Arts Corp. All rights reserved.
//

import UIKit

class PhotoData {
    
    var userId:Int?
    var photoUrl:String?
    var userName:String?
    var likes:Int?
    var description:String?
    var date:Date?
    
    init(userId:Int, photoUrl:String) {
        self.userId = userId
        self.photoUrl = photoUrl
    }
    
    
    //test init
    init(userName:String, likes:Int) {
        self.userName = userName
        self.likes = likes
    }
    //
    func changeLikes(currentLikes:Int, newLikes:Int, operation:(Int,Int) -> Int) -> Int {
        return operation(currentLikes,newLikes)
    }
    
    
    
}
