
//  Created by Yang Meyer on 09.07.12.
//  Copyright (c) 2012 Yang Meyer. Some rights reserved.

#import "YMViewController.h"

@implementation YMViewController

@synthesize todaySheet, tomorrowSheet;

- (void) viewDidLoad {
	[super viewDidLoad];
	
	CGAffineTransform rotation = CGAffineTransformMakeRotation(-M_PI/40);
	self.todaySheet.transform = rotation;
	self.tomorrowSheet.transform = rotation;
	
	NSDate* now = [NSDate date];
	self.todaySheet.date = now;
	
	NSDateComponents* oneDayComponents = [NSDateComponents new];
	oneDayComponents.day = 1;
	self.tomorrowSheet.date = [[NSCalendar currentCalendar] dateByAddingComponents:oneDayComponents
																			toDate:now
																		   options:0];
}

- (BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
