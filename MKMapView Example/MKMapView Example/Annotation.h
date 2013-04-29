//
//  Annotation.h
//  MKMapView Example
//
//  Created by Chris Wendel on 3/14/12.
//  Copyright (c) 2012 University of Michigan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
@interface Annotation : NSObject<MKAnnotation>
{
    CLLocationCoordinate2D coordinate;
    NSString *annotationTitle;
    NSString *annotationSubtitle;
}
@property(nonatomic)CLLocationCoordinate2D coordinate;
@property(nonatomic,retain)NSString *annotationTitle;
@property(nonatomic,retain)NSString *annotationSubtitle;

@end
