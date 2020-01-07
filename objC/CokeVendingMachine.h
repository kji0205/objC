//
//  Human.h
//  objC
//
//  Created by Jimmy on 2020/01/05.
//  Copyright © 2020 Jimmy. All rights reserved.
//


#ifndef CokeVendingMachine_h
#define CokeVendingMachine_h
#import <Foundation/Foundation.h>

@interface CokeVendingMachine : NSObject

@property int cokePrice, inputCoin;
-(void) receiveConin: (int) inputCoin;
+(void) giveCoke: (int) leftCoin;

@end

#endif /* CokeVendingMachine */
