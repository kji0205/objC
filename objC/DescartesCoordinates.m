//
//  DescartesCoordinates.m
//  objC
//
//  Created by Jimmy on 2020/01/05.
//  Copyright © 2020 Jimmy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DescartesCoordinates.h"

@implementation DescartesCoordinates

@synthesize x, y;

-(void)print
{
    NSLog(@"DescartesCoordinates x: %i, y: %i", x, y);
}

@end
