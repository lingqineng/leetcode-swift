//
//  q28-strStr.swift
//  leetcode
//
//  Created by lingqineng on 2018/1/18.
//  Copyright © 2018年 lingqineng. All rights reserved.
//

/*
 
 Implement strStr().
 
 Return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.
 
 Example 1:
 
 Input: haystack = "hello", needle = "ll"
 Output: 2
 Example 2:
 
 Input: haystack = "aaaaa", needle = "bba"
 Output: -1
 
*/

import Foundation

struct q28 {
    
    class Solution {
        func strStr(_ haystack: String, _ needle: String) -> Int {
            if needle.isEmpty {
                return 0
            }
            let array = Array(haystack.characters)
            let targetArray = Array(needle.characters)
            var i = 0; var j = 0
            while i < array.count - targetArray.count + 1 {
                if array[i+j] == targetArray[j] {
                    j += 1
                } else {
                    i += 1
                    j = 0
                }
                if j == targetArray.count{
                    break
                }
            }
            if j != targetArray.count {
                i = -1
            }
            return i
        }
    }
    
    static func getSolution() -> Void {
        print(Solution())
    }
}
