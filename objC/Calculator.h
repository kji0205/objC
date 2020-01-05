//
//  Calculator.h
//  objC
//
//  Created by Jimmy on 2020/01/05.
//  Copyright © 2020 Jimmy. All rights reserved.
//

#ifndef Calculator_h
#define Calculator_h

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

@property double accumulator;

-(void) clear;

//산술 연산 메서드
-(void) add: (double) value;
-(void) subtract: (double) value;
-(void) multiply: (double) value;
-(void) divide: (double) value;

@end

#endif /* Calculator_h */
