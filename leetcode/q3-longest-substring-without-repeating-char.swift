//
//  q3-longest-substring-without-repeating-char.swift
//  leetcode
//
//  Created by lingqineng on 2018/1/25.
//  Copyright © 2018年 lingqineng. All rights reserved.
//

/*
 
 Given a string, find the length of the longest substring without repeating characters.
 
 Examples:
 
 Given "abcabcbb", the answer is "abc", which the length is 3.
 
 Given "bbbbb", the answer is "b", with the length of 1.
 
 Given "pwwkew", the answer is "wke", with the length of 3. Note that the answer must be a substring, "pwke" is a subsequence and not a substring.
 
*/
import Foundation

struct q3 {
    
    class Solution {
        func lengthOfLongestSubstring(_ s: String) -> Int {
            if s.characters.count == 0 {
                return 0
            }
            else{
                let splitArray:[Character] = Array(s.characters)
                var tempDict:Dictionary<Character,Int> = [:]
                var length = 0
                var j = 0
                for i in 0...splitArray.count - 1{
                    if tempDict[splitArray[i]] != nil {
                        j = max(j, tempDict[splitArray[i]]! + 1)
                    }
                    length = max(length, i - j + 1)
                    tempDict[splitArray[i]] = i
                }
                return length
            }
        }
    }
    
    static func getSolution() -> Void {
        print(Solution())
    }
}
