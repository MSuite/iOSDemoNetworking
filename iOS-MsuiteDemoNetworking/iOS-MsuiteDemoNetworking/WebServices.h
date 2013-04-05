//
//  WebServices.h
//  iOS-MsuiteDemoNetworking
//
//  Created by Andrew Rauh on 4/5/13.
//  Copyright (c) 2013 Andrew Rauh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WebServices : NSObject

@property (nonatomic, strong) NSArray *allPosts;
@property (nonatomic, strong) NSMutableArray * allPostTitles;

+(id) sharedInstance;
-(void) grabDataFromSiteAndBuildArray;

@end
