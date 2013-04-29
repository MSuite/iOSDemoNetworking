//
//  AddressAnnotation.h
//  MapTest
//
//  Created by Chris Wendel on 3/14/12.
//  Copyright (c) 2012 University of Michigan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
@interface AddressAnnotation : NSObject<MKAnnotation>
{
    CLLocationCoordinate2D coordinate;
    NSString *title;
    NSString *subTitle;
}

@property(nonatomic) CLLocationCoordinate2D coordinate;
@property(nonatomic,retain)NSString *annotationTitle;
@property(nonatomic,retain)NSString *annotationSubTitle; 


@end
