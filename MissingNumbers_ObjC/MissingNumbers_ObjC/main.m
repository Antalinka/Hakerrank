//
//  main.m
//  MissingNumbers_ObjC
//
//  Created by Eugene Tretiakova on 3/2/17.
//  Copyright © 2017 Eugenya. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SomeClass : NSObject
- (void) numbersList;
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        SomeClass* numbers = [[SomeClass alloc] init];
        [numbers numbersList];
    }
    return 0;
}

@implementation SomeClass

- (void) numbersList
{
    NSLog(@"Enter a count");
    NSMutableString* ret = [[NSMutableString alloc] initWithString:@""];
    
    char r = getchar();
    while(r != EOF && r != 10)
    {
        [ret appendFormat:@"%c",r];
        r = getchar();
    }
    NSLog(@"ret %@",ret);
    sin >> n
}
@end


/*
 func getNumbersList() -> NumerosStruct?
 {
 print("Enter a count")
 let inner = readLine();
 
 guard let countStr = inner, let count = Int(countStr) else
 {
 return nil
 }
 
 print("Enter a numbers")
 
 let numbersStr = input()
 
 print(numbersStr)
 return nil
*/
