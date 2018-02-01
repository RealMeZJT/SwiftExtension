//: Playground - noun: a place where people can play

import UIKit


let templeteArr = ["a","b","c","d","e","f"]
var arr = templeteArr


let subArr = arr.move(at: 0, lenght: 3, offset: 3)
print("被重新排序的数组:\(arr)")


var arr2 = templeteArr
arr2.swap(xArrIndexs: [0,1], yArrIndexs: [4,5])
print("交换位置后的数组：\(arr2)")

//MARK: - UIView+Frame
let view = UIView(frame: CGRect.zero)
print("\(view.frame)")
view.updateFrame(newX: 10)
print("\(view.frame)")
