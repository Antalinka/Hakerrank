//
//  main.swift
//  Test_3
//
//  Created by Eugene Tretiakova on 8/2/16.
//  Copyright © 2016 Eugenya. All rights reserved.
//

import Foundation

func response(inner : String?)
{
    guard let temp = inner?.lowercaseString where UInt(temp) != nil else
    {
        return
    }
    
    var q = [UInt64]()
    for _ in 0..<UInt(temp)!
    {
        if let currentQ = readLine()
        {
            if currentQ.hasPrefix("1")
            {
                let numbers = currentQ.componentsSeparatedByString(" ")
                
                if let newIndex = numbers.last where UInt64(newIndex) != nil
                {
                    q.append(UInt64(newIndex)!)
                }
            }
            else if currentQ.hasPrefix("2")
            {
                if q.first != nil
                {
                    q.removeAtIndex(0)
                }
            }
            else  if currentQ.hasPrefix("3")
            {
                if let firstQ = q.first
                {
                    print(firstQ)
                }
            }
        }
    }
}

response(readLine())

