//
//  main.m
//  objC
//
//  Created by Jimmy on 2019/12/22.
//  Copyright © 2019 Jimmy. All rights reserved.
//


#import <Foundation/Foundation.h>

#define _Chapter 4

#import "Chapter01.h"
#import "Fraction.h"
#import "CokeVendingMachine.h"
#import "DescartesCoordinates.h"
#import "Calculator.h"

//Chapter 설정
const int Chapter = _Chapter;

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
        
        if (Chapter == 4) {
            //누산기
            Calculator *deskCalc = [[Calculator alloc] init];
            
            [deskCalc setAccumulator: 100.0];
            [deskCalc add: 200.];
            [deskCalc divide:15.0];
            [deskCalc subtract:10.0];
            [deskCalc multiply:5];
            NSLog(@"The result is %g", [deskCalc accumulator]);
            
            
        }
    }
    return 0;
}


