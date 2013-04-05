//
//  WebServices.m
//  iOS-MsuiteDemoNetworking
//
//  Created by Andrew Rauh on 4/5/13.
//  Copyright (c) 2013 Andrew Rauh. All rights reserved.
//

#import "WebServices.h"

@implementation WebServices
@synthesize allPosts, allPostTitles;

+(id)sharedInstance {
    static id sharedInstance = nil;
    if (sharedInstance == nil) {
        sharedInstance = [[self alloc]init];
    }
    return sharedInstance;
}


-(void) grabDataFromSiteAndBuildArray{
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:[NSURL URLWithString:@"https://public-api.wordpress.com/rest/v1/sites/ajrauh1.wordpress.com/posts/"]];
    
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_async(queue, ^{
        NSURLResponse *response = nil;
        NSError *error = nil;
        NSData *data = [NSURLConnection sendSynchronousRequest:urlRequest returningResponse:&response error:&error];
        NSString *json = [[NSString alloc] initWithData:data encoding:NSASCIIStringEncoding];
        
        id parsedObject = nil;
        NSError *parsingError = nil;
        
        if (json != nil && [json isKindOfClass:[NSString class]] && [json length] > 0){
            parsedObject = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSASCIIStringEncoding] options:0 error:&parsingError];
        }
                   
        if([parsedObject isKindOfClass:[NSDictionary class]]){
            NSDictionary *responseDict = (NSDictionary *)parsedObject;
            allPosts = [[NSArray alloc]initWithArray:[responseDict objectForKey:@"posts"]];
            allPostTitles = [[NSMutableArray alloc]init];
            for (NSDictionary *postDict in allPosts){
                [allPostTitles addObject:[postDict objectForKey:@"title"]];
            }
            
        }
        else if ([parsedObject isKindOfClass:[NSArray class]]){
            NSArray *responseArray = (NSArray *)parsedObject;
        }
        
    });
    
}


@end
