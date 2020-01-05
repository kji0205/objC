//
//  Fraction.h
//  objC
//
//  Created by Jimmy on 2020/01/05.
//  Copyright © 2020 Jimmy. All rights reserved.
//

#ifndef Fraction_h
#define Fraction_h

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;

@end

#endif /* Fraction_h */
