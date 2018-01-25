//
//  q150-evaluate-reverse-polish-natation.swift
//  leetcode
//
//  Created by lingqineng on 2018/1/25.
//  Copyright © 2018年 lingqineng. All rights reserved.
//

/*
 
 Evaluate the value of an arithmetic expression in Reverse Polish Notation.
 
 Valid operators are +, -, *, /. Each operand may be an integer or another expression.
 
 Some examples:
 ["2", "1", "+", "3", "*"] -> ((2 + 1) * 3) -> 9
 ["4", "13", "5", "/", "+"] -> (4 + (13 / 5)) -> 6
 
 */

import Foundation

struct q150 {
    
    class Solution {
        func evalRPN(_ tokens: [String]) -> Int {
            var array = [Int](); var result = 0
            if tokens.count == 1 {
                result = Int(tokens[0])!
            }
            for token in tokens {
                if Int(token) != nil {
                    array.append(Int(token)!)
                } else {
                    let num1 = array.last!; array.removeLast()
                    let num2 = array.last!; array.removeLast()
                    result = operateEvaluate(token,num2,num1)
                    array.append(result)
                }
            }
            return result
        }
        
        func operateEvaluate(_ str:String, _ num1:Int, _ num2:Int) -> Int {
            var result:Int = 0;
            switch str {
            case "+":
                result = num1 + num2
            case "-":
                result = num1 - num2
            case "*":
                result = num1 * num2
            case "/":
                result = num1 / num2
            default:
                result = 0
            }
            return result
        }
    }
    
    static func getSolution() -> Void {
        print(Solution())
    }
}
