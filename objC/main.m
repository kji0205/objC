//
//  main.m
//  objC
//
//  Created by Jimmy on 2019/12/22.
//  Copyright © 2019 Jimmy. All rights reserved.
//


#import <Foundation/Foundation.h>

#define _Chapter 7

#import "Chapter01.h"
#import "CokeVendingMachine.h"
#import "DescartesCoordinates.h"
#import "Calculator.h"

#if _Chapter == 4
    #import "Chapter04/Complex.h"
#endif

//Chapter 설정
const int Chapter = _Chapter;

#if _Chapter == 2

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        int year = 2020;
        NSLog(@"Hello World! %i", year);
        
    }
    return 0;
}

#endif

#if _Chapter == 3 || _Chapter == 4
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        if (Chapter == 2) {
            NSLog(@"\n------exam01------\n");
            NSLog(@"Programming is fun!");
            NSLog(@"Programming in Objective-C is even more fun!");
            NSLog(@"Testing...\n..1\n...2\n....3");
            
    //        int sum;
    //        sum = 50 + 25;
    //        NSLog(@"The sum of 50 and 25 is %i", sum);

            int value1, value2, sum;
            value1 = 50;
            value2 = 25;
            sum = value1 + value2;
            NSLog(@"The sum if %i and %i is %i", value1, value2, sum);
            
            
            Chapter01 *chapter01 = [[Chapter01 alloc] init];
    //        Chapter01 *chapter01 = [Chapter01 new];
            
            NSLog(@"\n------exam02------\n");
            // 클래스나 인스턴스에 행동을 수행하도록 할 때는 '메세지'를 보낸다고 표현한다.
            [chapter01 exam02];
            NSLog(@"\n------exam03------\n");
            [chapter01 exam03];
            NSLog(@"\n------exam04------\n");
            [chapter01 exam04];
            
            NSLog(@"\n------exam05------\n");
            int sum1;
            sum1 = 25 + 37 - 19;
            NSLog(@"The answer is %i", sum1);
            
            NSLog(@"\n------exam06------\n");
            int answer, result;
            answer = 100;
            result = answer - 10;
            
            NSLog(@"The result is %i\n", result + 5);
            
    //        program3_1();
        }
        
        if (Chapter == 3) {
            NSLog(@"Chapter03");
            
            Fraction *myFraction;
            
            // create Fraction instance
            myFraction = [Fraction alloc];
            myFraction = [myFraction init];
            
            // 1/3로 분수의 값을 설정한다.
            [myFraction setNumerator: 1];
            [myFraction setDenominator: 3];
            
            // print 메서드로 분수의 값을 표시한다.
            NSLog(@"The value of myFraction is:");
            [myFraction print];
            
            // 콜라 자판기
            CokeVendingMachine *cokeVendingMachine = [[CokeVendingMachine alloc] init];
            [cokeVendingMachine setCokePrice: 200];
            [cokeVendingMachine receiveConin: 300];
            
            // 데카르트 좌표
            DescartesCoordinates *descartesCoordinates = [[DescartesCoordinates alloc] init];
            [descartesCoordinates setX: 3];
            [descartesCoordinates setY:7];
            [descartesCoordinates print];
            
            
        }
        
#if _Chapter == 4
        if (Chapter == 4) {
            //누산기
            Calculator *deskCalc = [[Calculator alloc] init];
            
            [deskCalc setAccumulator: 100.0];
            [deskCalc add: 200.];
            [deskCalc divide:15.0];
            [deskCalc subtract:10.0];
            [deskCalc multiply:5];
            NSLog(@"The result is %g", [deskCalc accumulator]);
            
            // 화씨 27도를 섭씨로 바꿈.
            double a = 27;
            a = (a - 32) / 1.8;
            NSLog(@"%f", a);
            
            Complex *complex = [Complex alloc];
            complex = [complex init];
            [complex setReal:3.];
            [complex setImaginary:5.];
            [complex print];
        }
#endif
        
    }
    return 0;
}
#endif

#if _Chapter == 7
#import "Chapter07/FractionCh07.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FractionCh07 *aFraction = [[FractionCh07 alloc] init];
        FractionCh07 *bFraction = [[FractionCh07 alloc] init];
        
        [aFraction setTo: 1 over: 4];
        [bFraction setTo: 1 over: 2];
        
        [aFraction print];
        NSLog(@"+");
        [bFraction print];
        NSLog(@"=");
        
        [aFraction add: bFraction];
        [aFraction reduce];
        [aFraction print];
    }
    return 0;
}
#endif

#if _Chapter == 14
int main(int argc, const char * argv[]) {

    @autoreleasepool {
        NSLog(@"Chapter14 Number, String, Collection");
        
        NSNumber *myNumber,*floatNumber,*intNumber;
        NSInteger myInt;
        
        // integer 값
        intNumber = [NSNumber numberWithInteger: 100];
        myInt = [intNumber integerValue];
        NSLog(@"%li", (long) myInt);
        
        // long 값
        myNumber = [NSNumber numberWithLong: 0xabcdef];
        NSLog(@"%lx", [myNumber longValue]);
        
    }
    return 0;
}
#endif


#if _Chapter == 15

void program15_6();

int main(int argc, const char * argv[]) {

    @autoreleasepool {
        NSLog(@"Chapter15 Number, String, Collection");
        
        NSNumber *myNumber,*floatNumber,*intNumber;
        NSInteger myInt;
        
        // integer 값
        intNumber = [NSNumber numberWithInteger: 100];
        myInt = [intNumber integerValue];
        NSLog(@"%li", (long) myInt);
        
        // long 값
        myNumber = @0xabcdefL;
        NSLog(@"%lx", [myNumber longValue]);
        
        myNumber = @'X';
        NSLog(@"%c", [myNumber charValue]);
        
        // float value 값
        floatNumber = @100.0f;
        NSLog(@"%g", [floatNumber floatValue]);
        
        // Program 15.3
        NSString *str = @"Programming is fun";
        NSLog(@"%@", str);
        
        // Program 15.4
        NSString *str1 = @"This is string A";
        NSString *str2 = @"This is string B";
        NSString *res;
        NSComparisonResult compareResult;
        
        // 문자 개수 세기
        NSLog(@"Length of str1: %lu", [str1 length]);
        
        // 스트링 복사하기
        res = [NSString stringWithString: str1];
        NSLog(@"copy: %@", res);
        
        // 스트링을 다른 스트링 뒤에 붙여 복사하기
        str2 = [str1 stringByAppendingString: str2];
        NSLog(@"Concatentation: %@", str2);
        
        // 두 개의 스트링이 같은지 비교
        if ([str1 isEqualToString: res] == YES) {
            NSLog(@"str1 == res");
        } else  {
            NSLog(@"str1 != res");
        }
        
        // 두 개의 스트링 크기 비교
        compareResult = [str1 compare: str2];
//        NSLog(str2);
        
        if (compareResult == NSOrderedAscending) {
            NSLog(@"str1 < str2");
        } else if (compareResult == NSOrderedSame) {
            NSLog(@"str1 == str2");
        } else {
            NSLog(@"str1 > str2");
        }
        
        // 대문자로 변환
        res = [str1 uppercaseString];
        NSLog(@"Uppercase conversion: %s", [res UTF8String]);
        
        // 소문자로 변환
        res = [str1 lowercaseString];
        NSLog(@"Lowercase conversion: %@", res);
        
        NSLog(@"Original string: %@", str1);
        
        NSLog(@"change str1: %@", str1);
        str1 = @"xxxx";
        NSLog(@"change str1: %@", str1);
        
        
        program15_6();
        
    }
    return 0;
}

void program15_6()
{
    NSLog(@"Call program15_6");
    
    // 기본 스트링 작업-수정 가능한 스트링
    NSString *str1 = @"This is string A";
    NSString *search, *replace;
    NSMutableString *mstr;
    NSRange substr;
    
    // 수정 불가능한 스트링으로부터 수정 가능한 스트링 만들기
    mstr = [NSMutableString stringWithString:str1];
    NSLog(@"%@", mstr);
    
    // 문자 집어넣기
    [mstr insertString:@" mutable" atIndex:7];
    NSLog(@"%@", mstr);
    
    // 맨 뒤에 넣는 경우 병합하기
    [mstr insertString:@" and string B" atIndex:[mstr length]];
    NSLog(@"%@", mstr);
    
    // appendString 직접 사용
    [mstr appendString:@" and string C"];
    NSLog(@"%@", mstr);
    
    // 범위로 주어진 서브스트링 지우기
    [mstr deleteCharactersInRange: NSMakeRange(16, 13)];
    NSLog(@"%@", mstr);
    
    // 스트링의 범위 찾아 삭제하기
    substr = [mstr rangeOfString:@"string B and "];
    
    if (substr.location != NSNotFound) {
        [mstr deleteCharactersInRange: substr];
        NSLog(@"%@", mstr);
    }
    
    // 수정 가능한 스트링 직접 설정하기
    [mstr setString: @"This is string A"];
    NSLog(@"%@", mstr);
    
    // 특정 범위를 다른 스트링으로 대치하기
    [mstr replaceCharactersInRange:NSMakeRange(8, 8) withString:@"a mutable string"];
    NSLog(@"%@", mstr);
    
    // 검색과 대치
    search = @"This is";
    replace = @"An example of";
    
    substr = [mstr rangeOfString:search];
    
    if (substr.location != NSNotFound) {
        [mstr replaceCharactersInRange:substr withString:replace];
        NSLog(@"%@", mstr);
    }
    
    // 모두 찾아 대치하기
    search = @"a";
    replace = @"X";
    
    substr = [mstr rangeOfString:search];
    
    while (substr.location != NSNotFound) {
        [mstr replaceCharactersInRange:substr withString:replace];
        substr = [mstr rangeOfString:search];
    }
    
    NSLog(@"%@", mstr);
}

#endif
