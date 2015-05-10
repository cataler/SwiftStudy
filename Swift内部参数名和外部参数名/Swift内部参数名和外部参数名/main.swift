//
//  main.swift
//  Swift内部参数名和外部参数名
//
//  Created by 蔡安涛 on 15/5/10.
//  Copyright (c) 2015年 cataler. All rights reserved.
//

import Foundation

func sayHello1(userName:String,greeting:String)
{
    println("\(userName)" + " say " + "\(greeting)")
}
/* 参数名为内部参数 */
sayHello1("catal", "today is sunday")

func sayHello2(Nick userName:String,Greet greeting:String)
{
    println("\(userName)" + " say " + "\(greeting)")
}
/* 在参数名前加上标识后 参数就变成了 外部参数名 */
sayHello2(Nick: "catal", Greet: "today is sunday")

func sayHello3(#userName:String,#greeting:String)
{
    println("\(userName)" + " say " + "\(greeting)")
}
/* 在参数名加下#号后 参数就变成了 既是内部参数名也是外部参数名 */
sayHello3(userName: "catal", greeting: "today is sunday")
