//
//  q20-valid-parentheses.swift
//  leetcode
//
//  Created by lingqineng on 2018/1/25.
//  Copyright © 2018年 lingqineng. All rights reserved.
//

/*
 
 Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
 
 The brackets must close in the correct order, "()" and "()[]{}" are all valid but "(]" and "([)]" are not.
 
 */

import Foundation

struct q20 {
    
    class Solution {
        func isValid(_ s: String) -> Bool {
            if s.characters.count < 2 {
                return false;
            }
            let rule = Array("()[]{}".characters)
            var stack = [Character]()
            for (_, char) in s.characters.enumerated() {
                if rule.index(of: char)! % 2 == 0 {    // open brackets
                    stack.append(char)
                } else {                            // close brackets
                    if stack.isEmpty {
                        return false
                    } else {
                        if rule.index(of: char)! - rule.index(of: stack.last!)! == 1 {  //barckets matched
                            stack.removeLast()
                        } else {
                            return false
                        }
                    }
                }
            }
            return stack.isEmpty
        }
    }
    
    static func getSolution() -> Void {
        print(Solution())
    }
}
