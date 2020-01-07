//
//  Fraction.m
//  objC
//
//  Created by Jimmy on 2020/01/07.
//  Copyright © 2020 Jimmy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FractionCh07.h"

@implementation FractionCh07

-(void) print
{
    NSLog(@"%i/%i", _numerator, _denomirator);
}

-(double) convertToNum
{
    if (_denomirator != 0) {
        return (double) _numerator / _denomirator;
    } else
        return NAN;
}

-(void) setTo:(int)n over:(int)d
{
    _numerator = n;
    _denomirator = d;
}

// 분수 나누기
-(void) add:(FractionCh07 *) f
{
    // 두 분수를 더하려면
    // a/b+c/d=((a*d)+(b*c))/(b*d)
    
    _numerator = _numerator * f.denomirator + _denomirator * f.numerator;
    _denomirator = _denomirator * f.denomirator;
}

-(void) reduce
{
    int u = _numerator;
    int v = _denomirator;
    int temp;
    
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    
    _numerator /= u;
    _denomirator /= u;
}

@end
