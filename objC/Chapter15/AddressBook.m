//
//  AddressBook.m
//  objC
//
//  Created by Jimmy on 2020/01/14.
//  Copyright © 2020 Jimmy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressBook.h"

@implementation AddressBook

@synthesize bookName, book;

// AddressBook의 이름을 설정하고 빈 주소록을 생성한다.

-(id) initWithName: (NSString *) name
{
    self = [super init];
    
    if (self)
    {
        bookName = [NSString stringWithString: name];
        book = [NSMutableArray array];
    }
    
    return self;
}

-(id) init
{
    return [self initWithName:@"NoName"];
}

-(void) addCard:(AddressCard *) theCard
{
    [book addObject: theCard];
}

-(void) removeCard:(AddressCard *)theCard
{
    [book removeObjectIdenticalTo:theCard];
}

-(int) entries
{
    return [book count];
}

-(void) list
{
    NSLog(@"======== Contents of: %@ ==========", bookName);
    
    for (AddressCard *theCard in book) {
        NSLog(@"%-20s   %-32s", [theCard.name UTF8String], [theCard.email UTF8String]);
    }
    
    NSLog(@"============================================================");
}

-(AddressCard *)lookup:(NSString *) theName{
    for (AddressCard *nextCard in book) {
        if ([nextCard.name caseInsensitiveCompare:theName] == NSOrderedSame) {
            return nextCard;
        }
    }
    
    return nil;
}


-(void)sort{
//    [book sortUsingSelector: @selector(compareNames:)];
    [book sortUsingComparator:^(id obj1, id obj2) {
        return [[obj1 name] compare: [obj2 name]];
    }];
}


@end
