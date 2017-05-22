import UIKit

var photoCollection = [UIImage]()
var imageNums = [Int](1...10)

for i in imageNums {
    photoCollection.append(UIImage(named: "tema_\(i).jpg")!)
}