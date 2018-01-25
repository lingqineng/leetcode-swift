//
//  q66-plus-one.swift
//  leetcode
//
//  Created by lingqineng on 2018/1/16.
//  Copyright © 2018年 lingqineng. All rights reserved.
//

/*
 
 Given a non-negative integer represented as a non-empty array of digits, plus one to the integer.
 
 You may assume the integer do not contain any leading zero, except the number 0 itself.
 
 The digits are stored such that the most significant digit is at the head of the list.
 
 */

import Foundation

struct q66 {
    
    
    class Solution {
        func plusOne(_ digits: [Int]) -> [Int] {
            
            if digits.count == 0 {
                return []
            }
            
            var digits = digits
            for idx in (0 ..< digits.count).reversed() {
                if digits[idx] < 9 {
                    digits[idx] += 1
                    return digits
                }
                
                digits[idx] = 0
            }
            
            digits.insert(1, at: 0)
            return digits
        }
    }
    
    static func getSolution() -> Void {
        print(Solution().plusOne([9,9,9]))
    }
}
