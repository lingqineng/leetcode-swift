//
//  q11-container-with-most-water.swift
//  leetcode
//
//  Created by lingqineng on 2018/1/30.
//  Copyright © 2018年 lingqineng. All rights reserved.
//

/*
 
 Given n non-negative integers a1, a2, ..., an, where each represents a point at coordinate (i, ai). n vertical lines are drawn such that the two endpoints of line i is at (i, ai) and (i, 0). Find two lines, which together with x-axis forms a container, such that the container contains the most water.
 
 */

import Foundation

struct q11 {
    // 双指针，头尾各有一个，往中间夹
    class Solution {
        func maxArea(_ height: [Int]) -> Int {
            var maxArea:Int = 0
            var i = 0; var j = height.count - 1
            while i < j {
                var area = 0
                if height[i] <= height[j] {
                    area = height[i] * (j - i)
                    i += 1
                } else {
                    area = height[j] * (j - i)
                    j -= 1
                }
                if maxArea < area {
                    maxArea = area
                }
            }
            return maxArea
        }
    }
    
    static func getSolution() -> Void {
        print(Solution())
    }
}
