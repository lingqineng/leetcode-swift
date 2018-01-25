//
//  q14-longest-common-prefix.swift
//  leetcode
//
//  Created by lingqineng on 2018/1/25.
//  Copyright © 2018年 lingqineng. All rights reserved.
//

/*
 
 Write a function to find the longest common prefix string amongst an array of strings.
 
*/

import Foundation

struct q14 {
    
    class Solution {
        func longestCommonPrefix(_ strs: [String]) -> String {
            var s: String?          //Find the shortest string
            var length = Int.max    //Shortest string's length
            
            for str in strs {
                if str.characters.count < length {
                    length = str.characters.count
                    s = str
                }
            }
            
            if var s = s {
                var endIndex = s.endIndex
                for str in strs {
                    while !s.isEmpty && !str.hasPrefix(s) {
                        endIndex = s.index(before: endIndex)
                        s = s.substring(to: endIndex)
                    }
                }
                return s
            } else {
                return ""
            }
        }
    }
    
    static func getSolution() -> Void {
        print(Solution())
    }
}
