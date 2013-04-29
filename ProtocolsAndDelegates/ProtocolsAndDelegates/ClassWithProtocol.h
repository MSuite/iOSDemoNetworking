//
//  ClassWithProtocol.h
//  ProtocolsAndDelegates
//
//  Created by Chris Wendel on 2/15/12.
//  Copyright (c) 2012 University of Michigan. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MyDelegate <NSObject>
@required
-(void)processSuccessful:(BOOL)success;

@end

@interface ClassWithProtocol : NSObject 
{
    id <MyDelegate> delegate;
}

@property (retain) id delegate; 

-(void)startSomeProcess;


@end
