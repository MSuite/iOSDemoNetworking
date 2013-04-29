//
//  DetailedViewController.h
//  TableView Example
//
//  Created by Chris Wendel on 3/7/12.
//  Copyright (c) 2012 University of Michigan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailedViewController : UIViewController
{
    IBOutlet UILabel *city_label;
    NSString *city_name;
}
@property(nonatomic,retain)IBOutlet UILabel *city_label;
@property(nonatomic,retain)NSString *city_name;

-(IBAction)closeButtonPressed:(id)sender;


@end
