//
//  q13-roman-to-integer.swift
//  leetcode
//
//  Created by lingqineng on 2018/1/25.
//  Copyright © 2018年 lingqineng. All rights reserved.
//

/*
 
 Given a roman numeral, convert it to an integer.
 
 Input is guaranteed to be within the range from 1 to 3999.
 
 */

import Foundation

struct q13 {
    
    class Solution {
        func romanToInt(_ s: String) -> Int {
            var total = 0;
            var forward = 0;
            var current = 0;
            for char in s.characters{
                switch char {
                case "I": current = 1; break
                case "V": current = 5; break
                case "X": current = 10; break
                case "L": current = 50; break
                case "C": current = 100; break
                case "D": current = 500; break
                case "M": current = 1000; break
                default : break
                }
                if current <= forward {
                    total += current;
                }
                else{
                    total = total + current - 2 * forward;
                }
                forward = current;
            }
            return total;
        }
    }
    
    static func getSolution() -> Void {
        print(Solution())
    }
}
