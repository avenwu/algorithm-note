#!/usr/bin/env swift
/**
* 快速排序
*/

func swap(inout A:[Int], i:Int, j:Int) {
    var t = A[i]
    A[i] = A[j]
    A[j] = t
}

/**
* 扫描数组进行分组，确定分组分割下标
*/
func partition(inout A:[Int], p:Int, r:Int) -> Int{
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

/**
* 快排
*/
func quickSort(inout A:[Int], p:Int, r:Int) {
    if p < r {
        var q = partition(&A, p, r)
        quickSort(&A, p, q - 1 )
        quickSort(&A, q + 1, r)
    } else {
        println("Invalid index")
    }
}

var A = [2, 8, 7, 1, 3, 5, 6, 4]
println("Array:\(A)")
//partition(&A, 0, A.count-1)
quickSort(&A, 0, A.count - 1)
println("Sorted:\(A)")