//
//  Calulator.h
//  Calculator
//
//  Created by Chris Wendel on 2/8/12.
//  Copyright (c) 2012 University of Michigan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calulator : NSObject
{
    //Engine of App
    double number1;
    double number2;
}

//Add Method
-(double)add;

//Subtract Method
-(double)subtract;

//Divide Method
-(double)divide;

//Multiply
-(double)multiply;

@property (assign) double number1;
@property (assign) double number2;

@end
