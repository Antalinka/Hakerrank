//
//  main.swift
//  MissingNumbers
//
//  Created by Eugene Tretiakova on 3/1/17.
//  Copyright © 2017 Eugenya. All rights reserved.
//

import Foundation

struct NumerosStruct
{
    let numbers : [Int]
    let count : Int
}
/*func scanInt(count : Int) -> [Int]
{
    var result = [Int]()
    for _ in 0..<count
    {
        let tmpNumPointer = UnsafeMutablePointer<CInt>.allocate(capacity: 1)
        let valist = getVaList([OpaquePointer(tmpNumPointer)])
        let rtn = vscanf("%d", valist)
        print(rtn)
        if rtn == 0 {
            // examine the errno global variable to get the error as defined in errno.h
            // if you want to handle or report the error
//            return result
            break
        }
        let returnVal = Int(tmpNumPointer.pointee)
        tmpNumPointer.deallocate(capacity: 1)
        result.append(returnVal)
    }
    return result
}*/
//public func getLine() -> String {
//    var buf = String()
//    var c = getchar()
//    // 10 is ascii code for newline
//    while c != EOF && c != 10 {
//        buf.append(UnicodeScalar(UInt32(c)))
//        c = getchar()
//    }
//    return buf
//}

//func readData() -> Data {
//    return FileHandle.standardInput.availableData
//}
//
//func readString() -> String {
//    return String(data: readData(), encoding:NSUTF8StringEncoding)!.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
//}
//
//func readInt() -> Int {
//    return Int(readString())!
//}
//
//func readArrayOfStrings() -> Array<String> {
//    return readString().componentsSeparatedByCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
//}
//
//func readArrayOfInts() -> Array<Int> {
//    return readArrayOfStrings().map {
//        (str: String) -> Int in
//        return Int(str)!
//    }
//}

func getNumbersList() -> NumerosStruct?
{
//    print("Enter a count")
//    let inner = scanInt(count: 1);
    let inner = readLine()
    
//    guard let count = inner.first else
//    {
//        return nil
//    }
    guard let countStr = inner, let count = Int(countStr) else
    {
        return nil
    }
    
//    var tempNumbers = [Int]()

   /* for _ in 0..<count
    {
        if let test = readLine()
        {
            if let intTest = Int(test)
            {
                tempNumbers.append(intTest)
            }
        }
    }*/
//    print("Enter a numbers")
////    let bytes = scanInt(count: count);
//    
//    var numbers = ""
//
//    while let thing = readLine() {
//        numbers += thing + " "
//    }
//    
//   /* let stdin = NSFileHandle.fileHandleWithStandardInput()
//    let inputString = NSString(data: stdin.availableData, encoding: NSUTF8StringEncoding)
//*/
////    let stdin = FileHandle.standardInput
////    let bytes = NSString(data: stdin.availableData, encoding: String.Encoding.utf8.rawValue)
////
////    guard let numbers = string else
////    {
////        return nil
////    }
//    guard numbers.isEmpty == false else
//    {
//        return nil
//    }
//    
//    var tempNumbers = [Int]()
//    
////    let tempNumbers = numbers.characters.split(separator: " ").map(String.init)
//
//    let numberArray = numbers.components(separatedBy: " ");
//    
//    for str in numberArray
//    {
//        let intValue = Int(str)!;
//        tempNumbers.append(intValue)
//    }
    let data = FileHandle.standardInput.readDataToEndOfFile()
    let str = String(data: data, encoding: .utf8)
//    print(str)
    return nil
    
//    return NumerosStruct(numbers: tempNumbers, count: count);

}

func response()
{
    guard let listA = getNumbersList() else
    {
        return
    }
    
    guard let listB = getNumbersList() else
    {
        let orderList = listA.numbers.sorted{ (a, b) -> Bool in
            return a < b
        }

        var resultStr = String()
        
        for str in orderList
        {
            resultStr = resultStr + String(str) + " "
        }
        
        print(resultStr)

        return
    }
    
    var missingList = Set<Int>()
    
    for numberA in listA.numbers
    {
        if missingList.contains(numberA)
        {
            continue
        }
        let resultListB = listB.numbers.filter({ (numberB) -> Bool in
            return numberA == numberB
        })
        
        if resultListB.count == 0
        {
            missingList.insert(numberA)
        }
        else if resultListB.count > 1
        {
            let resultListA = listA.numbers.filter({ (a) -> Bool in
                return numberA == a
            })
            if (resultListA.count != resultListB.count)
            {
                missingList.insert(numberA)
            }
        }
    }
    
    let orderList = Array(missingList).sorted { (a, b) -> Bool in
        return a < b
    }
    var resultStr = String()
    
    for str in orderList
    {
        resultStr = resultStr + String(str) + " "
    }
    
    print(resultStr)
}

response()









