//
//  ViewController.h
//  MKMapView Example
//
//  Created by Chris Wendel on 3/14/12.
//  Copyright (c) 2012 University of Michigan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "Annotation.h"
@interface ViewController : UIViewController<MKMapViewDelegate>
{
    IBOutlet MKMapView *mapView;
    Annotation *appleHeadquartersAnn;

    
}
@property(nonatomic,retain)Annotation *appleHeadquartersAnn;

@end
