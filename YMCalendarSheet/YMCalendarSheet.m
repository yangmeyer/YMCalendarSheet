
//  Created by Yang Meyer on 06.07.12.
//  Copyright (c) 2012 Yang Meyer. All rights reserved.

#import "YMCalendarSheet.h"
#import "UIView+NibLoading.h"

@implementation YMCalendarSheet

@synthesize monthLabel, dayLabel;
@synthesize date=_date;
- (void) setDate:(NSDate*)date {
	_date = date;
	[self updateViews];
}

#pragma mark - Lifecycle

- (id) awakeAfterUsingCoder:(NSCoder*)aDecoder {
    BOOL theThingThatGotLoadedWasJustAPlaceholder = ([[self subviews] count] == 0);
    if (theThingThatGotLoadedWasJustAPlaceholder) {
        YMCalendarSheet* theRealThing = [[self class] loadFromNib];
		
        // pass properties through
        theRealThing.frame = self.frame;
        theRealThing.autoresizingMask = self.autoresizingMask;
        theRealThing.alpha = self.alpha;
        theRealThing.hidden = self.hidden;
		
		// convince ARC that we're legit
		CFRelease((__bridge const void*)self);
		CFRetain((__bridge const void*)theRealThing);
		
        return theRealThing;
    }
    return self;
}

#pragma mark - 

- (void) updateViews {
	// creating formatters every time is expensive. should you need to update the date frequently, consider cached properties for the formatters.
	
	NSDateFormatter* monthFormatter = [NSDateFormatter new];
	monthFormatter.dateFormat = [NSDateFormatter dateFormatFromTemplate:@"MMM"
																options:0
																 locale:[NSLocale currentLocale]];
	self.monthLabel.text = [[monthFormatter stringFromDate:self.date] uppercaseString];
	
	NSDateFormatter* dayFormatter = [NSDateFormatter new];
	dayFormatter.dateFormat = [NSDateFormatter dateFormatFromTemplate:@"d"
															  options:0
															   locale:[NSLocale currentLocale]];
	self.dayLabel.text = [dayFormatter stringFromDate:self.date];
}

@end
