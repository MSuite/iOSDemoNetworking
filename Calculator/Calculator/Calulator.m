//
//  Calulator.m
//  Calculator
//
//  Created by Chris Wendel on 2/8/12.
//  Copyright (c) 2012 University of Michigan. All rights reserved.
//

#import "Calulator.h"

@implementation Calulator

@synthesize number1;
@synthesize number2;
//Add Method
-(double)add
{
    NSLog(@"Add called");
    double answer;
    NSLog(@"number 1 is %f",number1);
    answer = number1 + number2; 
    NSLog(@"answer is %f",answer);

    return answer;
}

//Subtract Method
-(double)subtract
{
    double answer;
    
    answer = number1 - number2;
    
    return answer;
    
}

//Divide Method
-(double)divide
{
    double answer;
    
    answer = number1/number2;
    
    return answer;
}

//Multiply
-(double)multiply
{
    double answer;
    
    answer = number1 * number2;
    
    return answer;
}

@end
