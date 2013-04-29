//
//  ViewController.h
//  MapTest
//
//  Created by Chris Wendel on 3/14/12.
//  Copyright (c) 2012 University of Michigan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "AddressAnnotation.h"

@interface ViewController : UIViewController<MKMapViewDelegate>
{
    IBOutlet UITextField *addressField;
    IBOutlet UIButton *goButton;
    IBOutlet MKMapView *mapView;
    AddressAnnotation *addAnnotation;
}
@property(nonatomic,retain)AddressAnnotation *addAnnotation;


@end
