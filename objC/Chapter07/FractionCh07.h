//
//  Fraction.h
//  objC
//
//  Created by Jimmy on 2020/01/07.
//  Copyright © 2020 Jimmy. All rights reserved.
//

#ifndef FractionCh07_h
#define FractionCh07_h

@interface FractionCh07 : NSObject

@property int numerator, denomirator;

-(void) print;
-(void) setTo: (int) n over: (int) d;
-(double) convertToNum;
-(void) add: (FractionCh07 *) f;
-(void) reduce;

@end

#endif /* Fraction_h */
