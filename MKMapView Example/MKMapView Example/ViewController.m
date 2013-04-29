//
//  ViewController.m
//  MKMapView Example
//
//  Created by Chris Wendel on 3/14/12.
//  Copyright (c) 2012 University of Michigan. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize appleHeadquartersAnn;
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    mapView.delegate = self;
    mapView.mapType = MKMapTypeHybrid;
	// Do any additional setup after loading the view, typically from a nib.
    MKCoordinateRegion region;
    region.center.latitude = 37.3305262;
    region.center.longitude= -122.0290935;
    region.span.longitudeDelta = 0.01;
    region.span.latitudeDelta = 0.01;
    [mapView setRegion:region];
    
    appleHeadquartersAnn = [[Annotation alloc]init];
    appleHeadquartersAnn.annotationTitle = @"Apple";
    appleHeadquartersAnn.annotationSubtitle = @"Headquarters";
    appleHeadquartersAnn.coordinate = region.center;//contains 2 doubles: latitude and longitude
    [mapView addAnnotation:appleHeadquartersAnn];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark MKMapViewDelegate Methods

-(MKAnnotationView*)mapView:(MKMapView *)mapV viewForAnnotation:(id<MKAnnotation>)annotation
{
    MKPinAnnotationView *pinView = (MKPinAnnotationView*)[mapV dequeueReusableAnnotationViewWithIdentifier:@"myLocation"];
    
    if(pinView==nil)
    {
        pinView = [[MKPinAnnotationView alloc]initWithAnnotation:annotation reuseIdentifier:@"myLocation"];
        pinView.canShowCallout = YES;
        pinView.animatesDrop = YES;
    }
    
    
    return pinView;
}



















@end
