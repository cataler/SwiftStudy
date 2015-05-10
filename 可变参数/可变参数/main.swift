//
//  main.swift
//  可变参数
//
//  Created by 蔡安涛 on 15/5/10.
//  Copyright (c) 2015年 cataler. All rights reserved.
//

import Foundation

/* 对于可变的参数必须要放到 其他必须要有的参数的后面 */
func addSum(number1:Int,number2:Int,others:Int...)
{
    var sum = number1 + number2
    for number in others
    {
        sum += number
    }
    println(sum)
}

addSum(1, 2)
addSum(1, 2, 3, 4, 5)