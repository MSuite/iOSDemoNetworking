//
//  ViewController.h
//  Calculator
//
//  Created by Chris Wendel on 2/8/12.
//  Copyright (c) 2012 University of Michigan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Calulator.h"

@interface ViewController : UIViewController
{
    Calulator *calculator;
    
    //IBOutlets
    IBOutlet UITextField *textField1;
    IBOutlet UITextField *textField2;
    IBOutlet UILabel *answerLabel;
}

-(IBAction)addButtonPressed:(id)sender;

-(IBAction)subtractButtonPressed:(id)sender;

-(IBAction)divideButtonPressed:(id)sender;

-(IBAction)multiplyButtonPressed:(id)sender;


@end
