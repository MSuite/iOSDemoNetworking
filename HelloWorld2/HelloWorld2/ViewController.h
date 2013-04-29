//
//  ViewController.h
//  HelloWorld
//
//  Created by Chris Wendel on 1/31/12.
//  Copyright (c) 2012 University of Michigan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UITextField *textField;
    IBOutlet UILabel *label;
}
@property (nonatomic,retain)IBOutlet UITextField *textField;
@property (nonatomic,retain)IBOutlet UILabel *label;

-(IBAction)buttonPressed:(id)sender;


@end
