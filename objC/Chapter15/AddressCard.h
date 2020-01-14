//
//  AddressCard.h
//  objC
//
//  Created by Jimmy on 2020/01/14.
//  Copyright © 2020 Jimmy. All rights reserved.
//

#ifndef AddressCard_h
#define AddressCard_h

@interface AddressCard : NSObject

// copy 속성: 세터 메서드에서 인스턴스 변수의 사본을 만들라는 의미 (기본값: assign - 대입)
// nonatomic 속상: 다중 스레드에서 동시에 한 인스턴스에 접근하려 할 때 발생할 수 있는 경쟁 조건에 대해 걱정할 필요가 없다고 지시

@property (copy, nonatomic) NSString *name, *email;

//-(void)setName:(NSString *)theName;
//-(void)setEmail:(NSString *)theEmail;
//-(NSString *)name;
//-(NSString *)email;

-(void)setName:(NSString *)theName andEmail:(NSString *)theEmail;
-(NSComparisonResult) compareNames: (id) element;

-(void)print;

@end

#endif /* AddressCard_h */
