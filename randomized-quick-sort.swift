#!/usr/bin/env swift
import Foundation
/**
* 随机快排
*/
func swap(inout A:[Int], i:Int, j:Int) {
    var t = A[i]
    A[i] = A[j]
    A[j] = t
}

func randomSwap(inout A:[Int]) {
    var randomIndex = Int(arc4random_uniform(UInt32(A.count - 1)))
    swap(&A, randomIndex, A.count - 1)
    println("swap:A[\(randomIndex)] with A[\(A.count - 1)]")
}

func partition(inout A:[Int], p:Int, r:Int) -> Int {
    var x = A[r]
    var i = p - 1
    for var j = p; j < r; j++ {
        if A[j] <= x {
            i++
            swap(&A, i, j)
        }
    }
    swap(&A, ++i, r)
    return i
}

func quickSort(inout A:[Int], p:Int, r:Int) {
    if p < r {
        var q = partition(&A, p, r)
        quickSort(&A, p, q - 1)
        quickSort(&A, q + 1, r)
    }
}

var A = [2, 8, 7, 1, 3, 5, 6, 4]
println("Array:\(A)")
randomSwap(&A)
quickSort(&A, 0, A.count - 1)
println("Sorted:\(A)")