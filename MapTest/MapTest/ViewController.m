//
//  ViewController.m
//  MapTest
//
//  Created by Chris Wendel on 3/14/12.
//  Copyright (c) 2012 University of Michigan. All rights reserved.
//

#import "ViewController.h"
#import "AddressAnnotation.h"

@implementation ViewController
@synthesize  addAnnotation;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    MKCoordinateRegion region;
    region.center.latitude = 37.3305262;
    region.center.longitude = -122.0290935;
    region.span.longitudeDelta = .01;
    region.span.latitudeDelta = .01;
    [mapView setRegion:region animated:YES];
    mapView.delegate = self;
    
    AddressAnnotation *ann = [[AddressAnnotation alloc]init];
    ann.annotationTitle = @"Apple";
    ann.annotationSubTitle = @"Headquarters";
    ann.coordinate = region.center;
    NSLog(@"MapView adding annotation");
    [mapView addAnnotation:ann];
}

-(MKAnnotationView*)mapView:(MKMapView*)mapV viewForAnnotation:(id<MKAnnotation>)annotation
{

        MKPinAnnotationView *pinView = (MKPinAnnotationView*)[mapView dequeueReusableAnnotationViewWithIdentifier:@"myLocation"];

        if(pinView==nil)
        {
            pinView = [[[MKPinAnnotationView alloc]initWithAnnotation:annotation reuseIdentifier:@"myLocation"]autorelease];
            pinView.canShowCallout = YES;
            pinView.animatesDrop = YES;
        }
    
    
    return  pinView;
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
    return YES;
}



@end
