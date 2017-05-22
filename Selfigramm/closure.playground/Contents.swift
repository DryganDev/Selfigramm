import Foundation

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

var photos:[PhotoData] = [PhotoData(userName: "vika", likes: 50),PhotoData(userName: "Masha", likes: 100),PhotoData(userName: "Vera", likes: 150)]

photos[0].likes! = photos[0].changeLikes(currentLikes: photos[0].likes!, newLikes: 1) { (currentLikes, newLikes) -> Int in
    currentLikes + newLikes
}

print(photos[0].likes!)