//
//  main.m
//  objC
//
//  Created by Jimmy on 2019/12/22.
//  Copyright © 2019 Jimmy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Chapter01.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"\n------exam01------\n");
        NSLog(@"Programming is fun!");
        NSLog(@"Programming in Objective-C is even more fun!");
        NSLog(@"Testing...\n..1\n...2\n....3");
        
//        int sum;
//        sum = 50 + 25;
//        NSLog(@"The sum of 50 and 25 is %i", sum);

        int value1, value2, sum;
        value1 = 50;
        value2 = 25;
        sum = value1 + value2;
        NSLog(@"The sum if %i and %i is %i", value1, value2, sum);
        
        
        Chapter01 *chapter01 = [[Chapter01 alloc] init];
        
        NSLog(@"\n------exam02------\n");
        [chapter01 exam02];
        NSLog(@"\n------exam03------\n");
        [chapter01 exam03];
        NSLog(@"\n------exam04------\n");
        [chapter01 exam04];
        
        NSLog(@"\n------exam05------\n");
        int sum1;
        sum1 = 25 + 37 - 19;
        NSLog(@"The answer is %i", sum1);
        
        NSLog(@"\n------exam06------\n");
        int answer, result;
        answer = 100;
        result = answer - 10;
        
        NSLog(@"The result is %i\n", result + 5);
    }
    return 0;
}
