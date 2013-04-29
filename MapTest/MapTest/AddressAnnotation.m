//
//  AddressAnnotation.m
//  MapTest
//
//  Created by Chris Wendel on 3/14/12.
//  Copyright (c) 2012 University of Michigan. All rights reserved.
//

#import "AddressAnnotation.h"
#import <MapKit/MapKit.h>

@implementation AddressAnnotation 
@synthesize coordinate, annotationTitle,annotationSubTitle;

-(NSString *)subtitle
{
    return annotationTitle;
}

-(NSString *)title
{
    return annotationSubTitle;
}
-(void)dealloc
{
    [super release];
    [annotationTitle release];
    [annotationSubTitle release];
}

@end
