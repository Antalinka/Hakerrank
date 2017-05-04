//
//  main.swift
//  B'dayGift
//
//  Created by Eugene Tretiakova on 3/2/17.
//  Copyright © 2017 Eugenya. All rights reserved.
//

import Foundation

let number = readLine()

if let strNumber = number, let count = Int(strNumber)
{
    var sum : Double = 0
    for i in 0..<count
    {
        let value = readLine()
        if let intValue = value
        {
            sum += Double(intValue)!
        }
    }
    let result : Double = sum/2
    print(result);
}

