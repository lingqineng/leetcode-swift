//
//  q38-count-and-say.swift
//  leetcode
//
//  Created by lingqineng on 2018/1/18.
//  Copyright © 2018年 lingqineng. All rights reserved.
//

/*
 
 The count-and-say sequence is the sequence of integers with the first five terms as following:
 
 1.     1
 2.     11
 3.     21
 4.     1211
 5.     111221
 1 is read off as "one 1" or 11.
 11 is read off as "two 1s" or 21.
 21 is read off as "one 2, then one 1" or 1211.
 Given an integer n, generate the nth term of the count-and-say sequence.
 
 Note: Each term of the sequence of integers will be represented as a string.
 
 Example 1:
 
 Input: 1
 Output: "1"
 Example 2:
 
 Input: 4
 Output: "1211"
 
 */

import Foundation

struct q38 {
    
    class Solution {
        func countAndSay(_ n: Int) -> String {
            if n == 1 {
                return "1"
            }
            if n == 2 {
                return "11"
            }
            var i = 2; var str = "11"
            while i < n {
                var array = Array(str.characters)
                var newStr = ""
                var j = 0; var count = 1
                while j < array.count - 1 {
                    if array[j] == array[j + 1]{
                        count += 1
                        if j + 1 == array.count - 1 {
                            newStr = newStr + String(count) + String(array.last!)
                        }
                    } else {
                        newStr = newStr + String(count) + String(array[j])
                        count = 1
                        if j + 1 == array.count - 1 {
                            newStr = newStr + String(count) + String(array.last!)
                        }
                    }
                    j += 1
                }
                i += 1
                str = newStr
            }
            return str
        }
    }
    
    static func getSolution() -> Void {
        print(Solution())
    }
}
