//
//  q7-reverse-integer.swift
//  leetcode
//
//  Created by lingqineng on 2018/1/25.
//  Copyright © 2018年 lingqineng. All rights reserved.
//
/*
 
 Given a 32-bit signed integer, reverse digits of an integer.
 
 Example 1:
 
 Input: 123
 Output:  321
 Example 2:
 
 Input: -123
 Output: -321
 Example 3:
 
 Input: 120
 Output: 21
 Note:
 Assume we are dealing with an environment which could only hold integers within the 32-bit signed integer range. For the purpose of this problem, assume that your function returns 0 when the reversed integer overflows.
 
 */
import Foundation

struct q7 {
    
    class Solution {
        func reverse(_ x: Int) -> Int {
            if x > Int(INT32_MAX) {
                return 0;
            }
            else{
                let y = x >= 0 ? x : -x
                let Str = String(y)
                var words = Array(Str.characters).map{"\($0)"}
                words = words.reversed()
                let reversedStr = words.joined()
                let result = Int(reversedStr)!
                if result > Int(INT32_MAX) {
                    return 0;
                }
                return x >= 0 ? result : -result
            }
        }
    }
    
    static func getSolution() -> Void {
        print(Solution())
    }
}
