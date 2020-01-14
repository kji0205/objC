//
//  AddressCard.m
//  objC
//
//  Created by Jimmy on 2020/01/14.
//  Copyright © 2020 Jimmy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"

@implementation AddressCard{
    NSString *name;
    NSString *email;
}

@synthesize name, email;

- (void)setName:(NSString *)theName andEmail:(NSString *)theEmail
{
//    self.name = theName;
    [self setName:theName];
    self.email = theEmail;
}

-(NSComparisonResult) compareNames: (id) element
{
    return [name compare: [element name]];
}

//-(void) setName:(NSString *)theName{
//    if (name != theName)
//        name = [NSString stringWithString:theName];
//}
//
//-(void) setEmail:(NSString *)theEmail{
//    if (email != theEmail)
//        email = [NSString stringWithString:theEmail];
//}
//
//-(NSString *)name{
//    return name;
//}
//
//-(NSString *)email{
//    return email;
//}

-(void) print{
    NSLog(@"=========================");
    NSLog(@"|                       |");
    NSLog(@"|   %-31s |", [name UTF8String]);
    NSLog(@"|   %-31s |", [email UTF8String]);
    NSLog(@"|                       |");
    NSLog(@"|                       |");
    NSLog(@"|                       |");
    NSLog(@"|    0              0     |");
    NSLog(@"=========================");
}

@end
