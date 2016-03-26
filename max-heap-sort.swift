#!/usr/bin/env swift
/**
* 堆排序（最大堆）
*/

/**
* 交换数组元素
*/
func swap(inout A:[Int], i:Int, j:Int) {
    var tmp = A[i]
    A[i] = A[j]
    A[j] = tmp
}

/**
* 维护最大堆的性质
*/
func heapify(inout A:[Int], i:Int, size:Int) {
	var l = 2 * i
	var r = l + 1
    var largest = i

	if l < size && A[l] > A[i] {
		largest = l
	}
    if r < size && A[r] > A[largest] {
        largest = r
    }
    if largest != i {
        swap(&A, i, largest)
        heapify(&A, largest, size)
    }
    
}

/**
* 构建最大堆
*/
func buildHeap(inout A:[Int]) {
    for var i = A.count/2; i >= 0; i-- {
        heapify(&A, i, A.count)
    }
    println("build heap:\(A)")
}

/**
*堆排序
*/
func heapSort(inout A:[Int]) {
    buildHeap(&A)
    var size = A.count
    for var i = A.count - 1; i >= 1; i-- {
        swap(&A, i, 0)
        size--
        heapify(&A, 0, size)
    }
    println("sorted heap:\(A)")
}

var A = [4, 1, 3, 2, 16, 9,9, 10, 14, 8, 7]
heapSort(&A)
