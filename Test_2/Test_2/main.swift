//
//  main.swift
//  Test_2
//
//  Created by Eugene Tretiakova on 8/2/16.
//  Copyright © 2016 Eugenya. All rights reserved.
//

import Foundation

func response(_ inner: String?) {
    
    guard let temp = inner?.lowercased(), Int(temp) != nil else
    {
        return
    }
    for _ in 0..<Int(temp)!
    {
        checkIt(readLine())
    }
}

func checkIt(_ numberStr : String?)
{
    guard let temp = numberStr?.lowercased(), Int(temp) != nil else
    {
        return
    }
    
    let number = Int(temp)!
    
    if number % 2 != 0
    {
        print(2)
    }
    else if (number / 2) % 2 == 0
    {
        print(3)
    }
    else
    {
        print(4)
    }
    
}
response(readLine())
