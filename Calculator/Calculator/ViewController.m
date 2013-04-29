//
//  ViewController.m
//  Calculator
//
//  Created by Chris Wendel on 2/8/12.
//  Copyright (c) 2012 University of Michigan. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    calculator = [[Calulator alloc]init];
	// Do any additional setup after loading the view, typically from a nib.
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

-(IBAction)addButtonPressed:(id)sender
{
  //Set number1 and number2 in Calculator class
    [calculator setNumber1:textField1.text.doubleValue];
    [calculator setNumber2:textField2.text.doubleValue];
    
    //Let's say:
    
    //[calculator add];
    double ourAnswer = [calculator add];
    answerLabel.text = [NSString stringWithFormat:@"%f",ourAnswer];
    //textField1.text
}

-(IBAction)subtractButtonPressed:(id)sender
{
    //Set number1 and number2 in Calculator class
    [calculator setNumber1:textField1.text.doubleValue];
    [calculator setNumber2:textField2.text.doubleValue];
    
    //Let's say:
    
    //[calculator add];
    double ourAnswer = [calculator subtract];
    answerLabel.text = [NSString stringWithFormat:@"%f",ourAnswer];
    //textField1.text
}

-(IBAction)divideButtonPressed:(id)sender
{
    //Set number1 and number2 in Calculator class
    [calculator setNumber1:textField1.text.doubleValue];
    [calculator setNumber2:textField2.text.doubleValue];
    
    //Let's say:
    
    //[calculator add];
    double ourAnswer = [calculator divide];
    answerLabel.text = [NSString stringWithFormat:@"%f",ourAnswer];
    //textField1.text
}

-(IBAction)multiplyButtonPressed:(id)sender
{
    //Set number1 and number2 in Calculator class
    [calculator setNumber1:textField1.text.doubleValue];
    [calculator setNumber2:textField2.text.doubleValue];
    
    //Let's say:
    
    //[calculator add];
    double ourAnswer = [calculator multiply];
    answerLabel.text = [NSString stringWithFormat:@"%f",ourAnswer];
    //textField1.text
    
}

@end
