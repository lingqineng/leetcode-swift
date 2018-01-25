//
//  q26-remove-duplicate-from-sorted-array.swift
//  leetcode
//
//  Created by lingqineng on 2018/1/15.
//  Copyright © 2018年 lingqineng. All rights reserved.
//

/*
 
 Given a sorted array, remove the duplicates in-place such that each element appear only once and return the new length.
 
 Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.
 
 Example:
 
 Given nums = [1,1,2],
 
 Your function should return length = 2, with the first two elements of nums being 1 and 2 respectively.
 It doesn't matter what you leave beyond the new length.
 
 */

import Foundation

struct q26 {
    
    class Solution {
        func removeDuplicates(_ nums: inout [Int]) -> Int {
            if nums.isEmpty{
                return 0
            }
            var i = 1; var j = 1
            while j < nums.endIndex {
                if nums[j] != nums[i - 1] {
                    nums[i] = nums[j]
                    i += 1; j += 1
                } else {
                    j += 1
                }
            }
            return i
        }
    }
    
    static func getSolution() -> Void {
        var array = [1,2,2,3]
        let num = Solution().removeDuplicates(&array)
        for i in 0..<num {
            print(array[i], terminator: " ")
        }
    }
}
