//
//  main.swift
//  函数的类型
//
//  Created by 蔡安涛 on 15/5/10.
//  Copyright (c) 2015年 cataler. All rights reserved.
//

import Foundation

func op1(x:Int) -> Int
{
    return Int( sqrt(Double(x)) * 10 )
}

func op2(x:Int) -> Int
{
    return Int( Double(x)/150.0 * 100.0 )
}

func op3(x:Int) -> Int
{
    return Int( x + 3 )
}

func changeScores(op:(Int) -> Int, inout scores:[Int] )
{
    for i in 0..<scores.count
    {
        scores[i] = op( scores[i] )
    }
    println(scores)
}

var scores = [1,2,3,4,5,6,7,8]
/* 参数op3 传给 op 就相当于 let op:(Int) -> Int = op3 */
changeScores(op3, &scores)

