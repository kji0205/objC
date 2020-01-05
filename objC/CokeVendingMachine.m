//
//  CokeVendingMachine.m
//  objC
//
//  Created by Jimmy on 2020/01/05.
//  Copyright © 2020 Jimmy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CokeVendingMachine.h"

@implementation CokeVendingMachine

@synthesize cokePrice, inputCoin;

-(void) receiveConin: (int) inputMoney
{
    if (cokePrice == inputMoney) {
        NSLog(@"Take Cola");
    } else if (cokePrice < inputMoney) {
        NSLog(@"Take Cola");
//        [self giveCoin: (inputMoney - cokePrice)];
    } else  {
        NSLog(@"I can't give you. \n I need more price %i", cokePrice - inputMoney);
    }
    
//    [giveCoke];
}

+(void) giveCoke: (int) leftCoin
{
    NSLog(@"Take Left Coin %i", leftCoin);
}

@end
