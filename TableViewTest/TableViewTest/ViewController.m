//
//  ViewController.m
//  TableViewTest
//
//  Created by Chris Wendel on 3/25/12.
//  Copyright (c) 2012 University of Michigan. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize imageStrings,tbView;
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

// Customize the number of rows in the table view.
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [imageStrings count];
}

// Customize the <span id="IL_AD9" class="IL_AD">appearance</span> of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView
                             dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if(cell == nil)
    {
        cell = [[[UITableViewCell alloc]
                 initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier]
                autorelease];
    }
    
    NSString *cellValue = [imageStrings  objectAtIndex:indexPath.row];
    cell.textLabel.text = cellValue;
    
    // NSString *image_name = [images objectAtIndex:indexPath.row];
    UIImage *image = [UIImage imageNamed:[imageStrings
                                          objectAtIndex:indexPath.row]];
    cell.imageView.image = image;
    
    return cell;
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.tbView.delegate = self;
    self.tbView.dataSource = self;
	// Do any additional setup after loading the view, typically from a nib.
     imageStrings = [[NSArray alloc]initWithArray:[NSArray arrayWithObjects:@"random1.jpg",@"random2.jpg", nil]];
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

@end
