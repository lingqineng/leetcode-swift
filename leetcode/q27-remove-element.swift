//
//  q27-remove-element.swift
//  leetcode
//
//  Created by lingqineng on 2018/1/15.
//  Copyright © 2018年 lingqineng. All rights reserved.
//

/*
 
 Given an array and a value, remove all instances of that value in-place and return the new length.
 
 Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.
 
 The order of elements can be changed. It doesn't matter what you leave beyond the new length.
 
 Example:
 
 Given nums = [3,2,2,3], val = 3,
 
 Your function should return length = 2, with the first two elements of nums being 2.
 
 */

import Foundation

struct q27 {
    
    class Solution {
        func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
            if nums.isEmpty {
                return 0
            }
            var count = 0; var index = 0
            while index < nums.endIndex {
                if val != nums[index]{
                    nums[count] = nums[index]
                    count += 1
                }
                index += 1
            }
            return count
        }
    }
    
    static func getSolution() -> Void {
        print(Solution())
    }
}
