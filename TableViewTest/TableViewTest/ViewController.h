//
//  ViewController.h
//  TableViewTest
//
//  Created by Chris Wendel on 3/25/12.
//  Copyright (c) 2012 University of Michigan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
{
    IBOutlet UITableView *tbView;
    NSArray *imageStrings;
}
@property(nonatomic,strong)NSArray *imageStrings;
@property(nonatomic,strong)IBOutlet UITableView *tbView;
@end
