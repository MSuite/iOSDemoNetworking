//
//  ViewController.m
//  TableView Example
//
//  Created by Chris Wendel on 3/7/12.
//  Copyright (c) 2012 University of Michigan. All rights reserved.
//

#import "ViewController.h"
#import "DetailedViewController.h"

@implementation ViewController
@synthesize table_view, cities;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.table_view.delegate = self;
    self.table_view.dataSource = self;
    
    self.cities = [[NSArray alloc]initWithArray:[NSArray arrayWithObjects:@"Ann Arbor",@"Detroit",@"East Lansing", nil]];
    
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
    return YES;
}

#pragma mark - UITableViewDataSource

/* UITableViewDataSource Methods*/
-(NSInteger)numberOfSectionsInTableView:(UITableView*)sender
{
    return 1;
}
-(NSInteger)tableView:(UITableView*)sender numberOfRowsInSection:(NSInteger)section
{
    return cities.count;
}

-(UITableViewCell*)tableView:(UITableView*)tableView cellForRowAtIndexPath:(NSIndexPath*)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    if(cell==nil)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    /*
     1. UILabel- textLabel
     2. UILabel- detailTextLabel ** We can only use this if our style is UITableViewCellStyleSubtitle
     3. UIImage- imageView
     
     Object- City
     
     */
    
    cell.textLabel.text = [cities objectAtIndex:indexPath.row];
    
    return cell;
}

#pragma mark - UITableViewDelegate Methods
-(void)tableView:(UITableView*)tableViewInMethod didSelectRowAtIndexPath:(NSIndexPath*)indexPath
{
    DetailedViewController *detailedVC = [[DetailedViewController alloc]initWithNibName:@"DetailedViewController" bundle:nil];
    //city_name
    detailedVC.city_name = [cities objectAtIndex:indexPath.row];
    [self presentModalViewController:detailedVC animated:YES];
    [detailedVC release];
    
    
}

-(void)dealloc
{
    [super dealloc];
    [cities release];
     
}

@end
