#!/usr/bin/env swift
/**
* 插入排序
*/

println("Insert sort...")

var intergerArray = [3,1,6,45,58,3,89,40]

println("intergerArray=\(intergerArray)")
//println("============>")
for var j = 1; j < intergerArray.count; j++ {
//    println("intergerArray[\(j)] = \(intergerArray[j])")
    let key = intergerArray[j]
    var i = j-1
    while i >= 0 && intergerArray[i] > key {
//        println("move item intergerArray[\(i)]=\(intergerArray[i]) to intergerArray[\(i+1)]")
        intergerArray[i+1] = intergerArray[i]
        i--
    }
    intergerArray[i+1] = key
//    println("Insert intergerArray[\(j)] at intergerArray[\(i+1)]")
}
//println("<============")

println("Sorted:\(intergerArray)")