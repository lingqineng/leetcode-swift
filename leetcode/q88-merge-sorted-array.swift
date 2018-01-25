//
//  q88-merge-sorted-array.swift
//  leetcode
//
//  Created by lingqineng on 2018/1/18.
//  Copyright © 2018年 lingqineng. All rights reserved.
//

/*
 
 Given two sorted integer arrays nums1 and nums2, merge nums2 into nums1 as one sorted array.
 
 Note:
 You may assume that nums1 has enough space (size that is greater or equal to m + n) to hold additional elements from nums2. The number of elements initialized in nums1 and nums2 are m and n respectively.
 
 */

import Foundation

struct q88 {
    
    class Solution {
        func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
            var index = m + n - 1
            var i1 = m - 1
            var i2 = n - 1
            
            while i1 >= nums1.startIndex && i2 >= nums2.startIndex {
                switch nums1[i1] > nums2[i2] {
                case true:
                    nums1[index] = nums1[i1]
                    index -= 1
                    i1 -= 1
                case false:
                    nums1[index] = nums2[i2]
                    index -= 1
                    i2 -= 1
                }
            }
            while i2 >= nums2.startIndex {
                nums1[index] = nums2[i2]
                index -= 1
                i2 -= 1
            }
        }
    }
    
    static func getSolution() -> Void {
        print(Solution())
    }
}
