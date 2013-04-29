//
//  ViewController.h
//  TableView Example
//
//  Created by Chris Wendel on 3/7/12.
//  Copyright (c) 2012 University of Michigan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
{
    IBOutlet UITableView *table_view;
    NSArray *cities;

}
@property(nonatomic,retain)IBOutlet UITableView *table_view;
@property(nonatomic,retain)NSArray *cities;
@end
