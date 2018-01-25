//
//  q35-search-insert-position.swift
//  leetcode
//
//  Created by lingqineng on 2018/1/25.
//  Copyright © 2018年 lingqineng. All rights reserved.
//

/*
 
 
 Given a sorted array and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.
 
 You may assume no duplicates in the array.
 
 Example 1:
 
 Input: [1,3,5,6], 5
 Output: 2
 Example 2:
 
 Input: [1,3,5,6], 2
 Output: 1
 Example 3:
 
 Input: [1,3,5,6], 7
 Output: 4
 Example 1:
 
 Input: [1,3,5,6], 0
 Output: 0
 
 */

import Foundation

struct q35 {
    
    class Solution {
        func searchInsert(_ nums: [Int], _ target: Int) -> Int {
            if nums.first! >= target {
                return 0
            }
            if nums.last! < target {
                return nums.endIndex
            }
            var index = 0
            for i in 0..<nums.count {
                if nums[i] >= target {
                    index = i;
                    break
                }
            }
            return index
        }
    }
    
    static func getSolution() -> Void {
        print(Solution())
    }
}
