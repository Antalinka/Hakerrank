//
//  main.swift
//  Test_1
//
//  Created by Eugene Tretiakova on 8/2/16.
//  Copyright © 2016 Eugenya. All rights reserved.
//

import Foundation

func response(inner : String?)
{
    guard let temp = inner?.lowercaseString where Int(temp) != nil else
    {
        return
    }
    
    for _ in 0..<Int(temp)!
    {
        let numberOfTowns = readLine()
        
        guard let nTowns = numberOfTowns?.lowercaseString where Int(nTowns) != nil else
        {
            return
        }
        
        var numberOfRoutes : Int = 1
        if let numberString = readLine()
        {
            let numbersSet = numberString.componentsSeparatedByString(" ")
            for numStr in numbersSet
            {
                let route = Int(numStr) ?? 1
                numberOfRoutes = (numberOfRoutes * route) % 1234567
            }
        }
        
        print(numberOfRoutes)
    }
}

response(readLine())
