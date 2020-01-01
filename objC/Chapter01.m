//
//  Chapter01.m
//  objC
//
//  Created by Jimmy on 2020/01/02.
//  Copyright © 2020 Jimmy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Chapter01.h"

@implementation Chapter01

-(void) exam02
{
    NSLog(@"%s\n%s\n%s\n%s\n",
    "In Objective-C, lowercase letters are significant.",
    "main is where program execution begins.",
    "Open and closed braces enclose program statements in a routine.",
    "All program statements must be terminated by a semicolon.");
}

-(void) exam03
{
    int i;
    i = 1;
    NSLog(@"Testing...");
    NSLog(@"...%i", i);
    NSLog(@"...%i", i + i);
    NSLog(@"..%i", i + 2);
}

-(void) exam04
{
    int i, a = 87, b = 15;
    i = a - b;
    NSLog(@"%i - %i = %i", a, b, i);
}
@end

