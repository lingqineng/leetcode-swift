//
//  q9-palindrome-number.swift
//  leetcode
//
//  Created by lingqineng on 2018/1/25.
//  Copyright © 2018年 lingqineng. All rights reserved.
//

/*
 
 Determine whether an integer is a palindrome. Do this without extra space.
 
 */

import Foundation

struct q9 {
    
    class Solution {
        func isPalindrome(_ x: Int) -> Bool {
            if x > Int(INT32_MAX) {
                return false;
            }
            else{
                let y = x >= 0 ? x : -x
                let Str = String(y)
                var words = Array(Str.characters).map{"\($0)"}//转换成[String]
                words = words.reversed()
                let reversedStr = words.joined()
                let result = Int(reversedStr)!
                if result > Int(INT32_MAX) {
                    return false;
                }
                return (x == result);
            }
        }
    }
    
    static func getSolution() -> Void {
        print(Solution())
    }
}
