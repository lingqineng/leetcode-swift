//
//  q58-length-of-last-word.swift
//  leetcode
//
//  Created by lingqineng on 2018/1/18.
//  Copyright © 2018年 lingqineng. All rights reserved.
//

/*
 
 Given a string s consists of upper/lower-case alphabets and empty space characters ' ', return the length of last word in the string.
 
 If the last word does not exist, return 0.
 
 Note: A word is defined as a character sequence consists of non-space characters only.
 
 Example:
 
 Input: "Hello World"
 Output: 5
 
 */
import Foundation

struct q58 {
    
    class Solution {
        func lengthOfLastWord(_ s: String) -> Int {
            var array = Array(s.characters)
            var i = 0; var count = 0
            while i < array.count {
                if String(array[array.count - i - 1]) != " " {
                    count += 1
                    i += 1
                } else {
                    if count == 0{
                        i += 1
                    } else {
                        return count
                    }
                }
            }
            return count
        }
    }
    
    static func getSolution() -> Void {
        print(Solution())
    }
}
