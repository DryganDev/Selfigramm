import UIKit

var nums = [Int]()
var scr = [Int](1...16)
for i in scr {
    if i % 2 == 0 {
        nums.append(i)
    }
}
nums

// filter
// почему 17 и 18 раз???
var nums2 = Array(0...16).filter { (a:Int) -> Bool in
    a % 2 == 0
}
nums2
var nums3 = (0...16).filter{$0 % 2 == 0}
nums3

// MAP

var strings = nums3.map{"\($0)"}
strings

var ints = strings.map{Int($0)!}
ints

var nums4 = ints.map{$0+10}
nums4

// reduce

var sum = nums4.reduce(0) {$0 + $1}
sum

var maxValue = nums4.reduce(nums4.min()!) {max($0,$1)}
maxValue

//join

var allPrices = strings.joined(separator: "P, ")
allPrices + "P"



var imageNums = [Int](0...9)
