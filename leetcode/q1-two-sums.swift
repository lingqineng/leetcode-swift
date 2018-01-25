//
//  q1-two-sums.swift
//  leetcode
//
//  Created by lingqineng on 2018/1/25.
//  Copyright © 2018年 lingqineng. All rights reserved.
//

import Foundation
/*
 
 Given an array of integers, return indices of the two numbers such that they add up to a specific target.
 
 You may assume that each input would have exactly one solution, and you may not use the same element twice.
 
 Example:
 Given nums = [2, 7, 11, 15], target = 9,
 
 Because nums[0] + nums[1] = 2 + 7 = 9,
 return [0, 1].
 
 */

struct q1 {
    
    class Solution {
        func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
            for i in 0...nums.count-1{
                for j in i+1...nums.count-1{
                    if (target-nums[i]) == nums[j]{
                        return [i,j]
                    }
                }
            }
            return []
        }
    }
    
    static func getSolution() -> Void {
        print(Solution())
    }
}
