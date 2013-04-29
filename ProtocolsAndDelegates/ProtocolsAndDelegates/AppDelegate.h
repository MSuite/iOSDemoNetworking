//
//  AppDelegate.h
//  ProtocolsAndDelegates
//
//  Created by Chris Wendel on 2/15/12.
//  Copyright (c) 2012 University of Michigan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ClassWithProtocol.h"

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate, 
MyDelegate>
{
    ClassWithProtocol *protocolTest;
}

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;

@end
