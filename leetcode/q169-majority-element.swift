//
//  q169-majority-element.swift
//  leetcode
//
//  Created by lingqineng on 2018/1/17.
//  Copyright © 2018年 lingqineng. All rights reserved.
//

/*
 
 Given an array of size n, find the majority element. The majority element is the element that appears more than ⌊ n/2 ⌋ times.
 
 You may assume that the array is non-empty and the majority element always exist in the array.
 
 */

import Foundation

struct q169 {
    
    class Solution {
        //1.hash table dictionary O(n) O(n)
        func majorityElement(_ nums: [Int]) -> Int {
            var numCounts = [Int: Int]()
            for num in nums {
                numCounts[num, default: 0] += 1  //must keep this code but in swift 3,have a error, in swift 4 ,no error
            }
            for (key, value) in numCounts {
                if value > nums.count / 2 {
                    return key
                }
            }
            return 0
        }
        //2.moore vote dictionary O(n) O(1)
        func majorityElement_1(_ nums: [Int]) -> Int {
            var count = 0;var major = nums.first!
            for i in 0..<nums.count {
                if count == 0 {
                    major = nums[i]
                    count = 1
                } else if major == nums[i] {
                    count += 1
                } else {
                    count -= 1
                }
            }
            return major
        }
        //3.sort method O(nlogn)
        func majorityElement(_ nums: [Int]) -> Int {
            var nums = nums.sorted()
            return nums[nums.count / 2]
        }
    }
    
    static func getSolution() -> Void {
        print(Solution().)
    }
}
