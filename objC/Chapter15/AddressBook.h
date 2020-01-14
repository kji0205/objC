//
//  AddressBook.h
//  objC
//
//  Created by Jimmy on 2020/01/14.
//  Copyright © 2020 Jimmy. All rights reserved.
//

#ifndef AddressBook_h

#import "AddressCard.h"
@interface AddressBook: NSObject

// strong : weak의 반대속성, 객체 참조의 생명주기를 지정
@property(nonatomic, copy) NSString *bookName;
@property(nonatomic, strong) NSMutableArray *book;

-(id)initWithName:(NSString *)name;
-(void)addCard:(AddressCard *)theCard;
-(void)removeCard:(AddressCard *)theCard;
-(int)entries;
-(void)list;
-(AddressCard *)lookup:(NSString *) theName;

-(void)sort;


@end

#define AddressBook_h


#endif /* AddressBook_h */
