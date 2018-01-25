//
//  q205-isomorphic-strings.swift
//  leetcode
//
//  Created by lingqineng on 2018/1/25.
//  Copyright © 2018年 lingqineng. All rights reserved.
//

/*
 
 Given two strings s and t, determine if they are isomorphic.
 
 Two strings are isomorphic if the characters in s can be replaced to get t.
 
 All occurrences of a character must be replaced with another character while preserving the order of characters. No two characters may map to the same character but a character may map to itself.
 
 For example,
 Given "egg", "add", return true.
 
 Given "foo", "bar", return false.
 
 Given "paper", "title", return true.
 
 Note:
 You may assume both s and t have the same length.
 
 */

import Foundation

struct q205 {
    
    class Solution {
        //using array,string utf8-encoding  36ms
        func isIsomorphic(_ s: String, _ t: String) -> Bool {
            var m1:[Int] = Array(repeating:0, count: 256)
            var m2:[Int] = Array(repeating:0, count: 256)
            
            let utf1 = Array(s.utf8)
            let utf2 = Array(t.utf8)
            
            for i in 0..<utf1.count {
                let u1 = Int(utf1[i])
                let u2 = Int(utf2[i])
                if m1[u1] != m2[u2] {
                    return false
                }
                
                m1[u1] = i + 1
                m2[u2] = i + 1
            }
            
            return true
        }
        //using dictionary  116ms
        func isIsomorphic_1(_ s: String, _ t: String) -> Bool {
            var sArray = [Character](s.characters)
            var tArray = [Character](t.characters)
            var sDic = [Character:Int](); var tDic = [Character:Int]()
            for i in 0..<sArray.count {
                if sDic[sArray[i]] != tDic[tArray[i]] {return false}
                sDic[sArray[i]] = i + 1; tDic[tArray[i]] = i + 1;
            }
            return true
        }
    }
    
    static func getSolution() -> Void {
        print(Solution())
    }
}
