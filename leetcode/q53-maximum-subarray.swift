//
//  q53-maximum-subarray.swift
//  leetcode
//
//  Created by lingqineng on 2018/1/15.
//  Copyright © 2018年 lingqineng. All rights reserved.
//

/*
 
 Find the contiguous subarray within an array (containing at least one number) which has the largest sum.
 
 For example, given the array [-2,1,-3,4,-1,2,1,-5,4],
 the contiguous subarray [4,-1,2,1] has the largest sum = 6.
 
 */

import Foundation

struct q53 {
    
    class Solution {
        func maxSubArray(_ nums: [Int]) -> Int {
            if nums.count == 1{
                return nums.first!
            }
            var i = 0; var j = 1; var total = 0
            while i < nums.endIndex {
                if total < nums[j]{
                    total += nums[j]
                    j += 1
                } else {
                    i = j
                    total = 0
                }
            }
            return total
        }
    }
    
    static func getSolution() -> Void {
        print(Solution().maxSubArray([-2,1,-3,4,-1,2,1,-5,4]))
    }
}
