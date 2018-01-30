//
//  q127-word-ladder.swift
//  leetcode
//
//  Created by lingqineng on 2018/1/30.
//  Copyright © 2018年 lingqineng. All rights reserved.
//

/*
 Given two words (beginWord and endWord), and a dictionary's word list, find the length of shortest transformation sequence from beginWord to endWord, such that:
 
 Only one letter can be changed at a time.
 Each transformed word must exist in the word list. Note that beginWord is not a transformed word.
 For example,
 
 Given:
 beginWord = "hit"
 endWord = "cog"
 wordList = ["hot","dot","dog","lot","log","cog"]
 As one shortest transformation is "hit" -> "hot" -> "dot" -> "dog" -> "cog",
 return its length 5.
 
 Note:
 Return 0 if there is no such transformation sequence.
 All words have the same length.
 All words contain only lowercase alphabetic characters.
 You may assume no duplicates in the word list.
 You may assume beginWord and endWord are non-empty and are not the same.
 */

import Foundation

struct q127 {
    
    class Solution {
        //this is a bfs problem
        func ladderLength(_ beginWord: String, _ endWord: String, _ wordList: [String]) -> Int {
            var array = [String](); var length = 1
            var characterArray = [Character]("abcdefghijklmnopqrstuvwxyz".characters)
            var wordListDic = [String:Int]()
            //if use array,contains() func -> O(n)
            //but use dictionary -> O(1)
            for i in 0..<wordList.count {
                wordListDic[wordList[i]] = i
            }
            array.append(beginWord)
            while !array.contains(endWord) {
                var findWords = [String]()
                for inputWord in array {
                    for i in 0..<inputWord.characters.count {
                        var charArray = [Character](inputWord.characters)
                        for j in 0..<characterArray.count {
                            charArray[i] = characterArray[j]
                            let str = String(charArray)
                            if wordListDic[str] != nil{
                                findWords.append(str) //find all word in this layer
                                wordListDic.removeValue(forKey:str) // delete words in dic
                            }
                        }
                    }
                }
                length += 1
                if findWords.count == 0 {
                    return 0
                }
                array = findWords
            }
            return length
        }
    }
    
    static func getSolution() -> Void {
        print(Solution())
    }
}
