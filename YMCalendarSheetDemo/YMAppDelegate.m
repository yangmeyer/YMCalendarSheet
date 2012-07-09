
//  Created by Yang Meyer on 09.07.12.
//  Copyright (c) 2012 Yang Meyer. Some rights reserved.

#import "YMAppDelegate.h"
#import "YMViewController.h"

@implementation YMAppDelegate

@synthesize window = _window;
@synthesize viewController = _viewController;

- (BOOL) application:(UIApplication*)application didFinishLaunchingWithOptions:(NSDictionary*)launchOptions {
	self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	self.viewController = [[YMViewController alloc] initWithNibName:@"YMViewController" bundle:nil];
	self.window.rootViewController = self.viewController;
	[self.window makeKeyAndVisible];
	return YES;
}

@end
