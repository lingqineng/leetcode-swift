//
//  q334-increasing-triplet-subSequence.swift
//  leetcode
//
//  Created by lingqineng on 2018/1/30.
//  Copyright © 2018年 lingqineng. All rights reserved.
//

/*
 
 Given an unsorted array return whether an increasing subsequence of length 3 exists or not in the array.
 
 Formally the function should:
 Return true if there exists i, j, k
 such that arr[i] < arr[j] < arr[k] given 0 ≤ i < j < k ≤ n-1 else return false.
 Your algorithm should run in O(n) time complexity and O(1) space complexity.
 
 Examples:
 Given [1, 2, 3, 4, 5],
 return true.
 
 Given [5, 4, 3, 2, 1],
 return false.
 
 */

import Foundation

struct q334 {
    
    class Solution {
        func increasingTriplet(_ nums: [Int]) -> Bool {
            var i = Int(INT32_MAX); var j = Int(INT32_MAX)
            for num in nums {
                if num <= i { i = num }
                else if num < j { j = num }
                else if num > j { return true }
            }
            return false
        }
    }
    
    static func getSolution() -> Void {
        print(Solution())
    }
}
