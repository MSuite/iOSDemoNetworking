//
//  ViewController.m
//  iOS-MsuiteDemoNetworking
//
//  Created by Andrew Rauh on 4/5/13.
//  Copyright (c) 2013 Andrew Rauh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize webServices;

- (void)viewDidLoad
{
    webServices = [WebServices sharedInstance];
    [webServices grabDataFromSiteAndBuildArray];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
