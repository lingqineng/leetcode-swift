//
//  q189-rotate-array.swift
//  leetcode
//
//  Created by lingqineng on 2018/1/17.
//  Copyright © 2018年 lingqineng. All rights reserved.
//
/*

Rotate an array of n elements to the right by k steps.

For example, with n = 7 and k = 3, the array [1,2,3,4,5,6,7] is rotated to [5,6,7,1,2,3,4].

Note:
Try to come up as many solutions as you can, there are at least 3 different ways to solve this problem.
 
*/

import Foundation

struct q189 {
    
    class Solution {
        func rotate(_ nums: inout [Int], _ k: Int) {
            var m = 0; var n = nums.count - 1
            var k = k % nums.count
            while m < nums.count / 2 {
                swap(&nums[m], &nums[n])
                m += 1
                n -= 1
            }
            var i = 0; var j = k - 1
            while i < k/2 {
                swap(&nums[i], &nums[j])
                i += 1
                j -= 1
            }
            m = 0; n = nums.count - 1
            while m < (nums.count - k) / 2 {
                swap(&nums[k+m], &nums[n])
                m += 1
                n -= 1
            }
        }
    }
    
    static func getSolution() -> Void {
        print(Solution())
    }
}
