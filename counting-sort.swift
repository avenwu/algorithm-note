#!/usr/bin/env swift
/**
* 计数排序
*/

//A数据源，B排序结果，C辅助计数数组

func countingSort(inout A:[Int], inout B:[Int], k:Int) {
    var C = [Int](count:k+1, repeatedValue:0)
    for var i = 0; i < A.count; i++ {
        C[A[i]] = C[A[i]] + 1
    }
    println("C element store count, C=\(C)")

    for var j = 1; j <= k; j++ {
        C[j] = C[j] + C[j-1]
    }
    println("C element store index, C=\(C)")
    for var i = A.count - 1; i > 0; i-- {
       
        println("i=\(i)")
        var value = A[i]
        var index = C[value] - 1
        B[index] = value
        C[value]--
        println("C=\(C)")
        println("B=\(B)")
    }
}

var A = [2, 5, 3, 0, 2, 3, 0, 3]
var B = [Int](count:A.count, repeatedValue:0)
println("Array:\(A)")
var k = A[0]
for i in A {
    if i > k {
        k = i
    }
}
println("k=\(k)")
countingSort(&A, &B, k)
println("Sorted:\(B)")