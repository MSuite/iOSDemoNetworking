//
//  Annotation.m
//  MKMapView Example
//
//  Created by Chris Wendel on 3/14/12.
//  Copyright (c) 2012 University of Michigan. All rights reserved.
//

#import "Annotation.h"

@implementation Annotation
@synthesize coordinate, annotationTitle, annotationSubtitle;

-(NSString*)title
{
    return annotationTitle;
}

-(NSString*)subtitle
{
    return annotationSubtitle;
}
 

-(void)dealloc
{
    [super dealloc];
    [annotationTitle release];
    [annotationSubtitle release];
}

@end
