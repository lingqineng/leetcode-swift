//
//  q217-contains-duplicate.swift
//  leetcode
//
//  Created by lingqineng on 2018/1/30.
//  Copyright © 2018年 lingqineng. All rights reserved.
//

/*
 
 Given an array of integers, find if the array contains any duplicates. Your function should return true if any value appears at least twice in the array, and it should return false if every element is distinct.
 
 */

import Foundation

struct q217 {
    
    class Solution {
        // use dictionary
        func containsDuplicate(_ nums: [Int]) -> Bool {
            var dict = [Int:Int]()
            for i in 0..<nums.count{
                if dict[nums[i]] != i && dict[nums[i]] != nil {return true}
                dict[nums[i]] = i
            }
            return false
        }
        // change format to set 
        func containsDuplicate_set(_ nums: [Int]) -> Bool {
            return Set(nums).count != nums.count
        }
    }
    
    static func getSolution() -> Void {
        print(Solution())
    }
}
