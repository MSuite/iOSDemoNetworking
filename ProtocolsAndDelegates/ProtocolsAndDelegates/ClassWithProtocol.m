//
//  ClassWithProtocol.m
//  ProtocolsAndDelegates
//
//  Created by Chris Wendel on 2/15/12.
//  Copyright (c) 2012 University of Michigan. All rights reserved.
//

#import "ClassWithProtocol.h"

@implementation ClassWithProtocol
@synthesize delegate;

-(void)processComplete
{
    [[self delegate]processSuccessful:YES];  
}

-(void)startSomeProcess
{
    [NSTimer scheduledTimerWithTimeInterval:5.0 target:self selector:@selector(processComplete) userInfo:nil repeats:YES];
}
@end
