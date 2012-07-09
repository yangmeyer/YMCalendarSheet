
//  Created by Yang Meyer on 06.07.12.
//  Copyright (c) 2012 Yang Meyer. All rights reserved.

#import <QuartzCore/QuartzCore.h>

@interface YMCalendarSheet : UIView

/// The date to display. May be nil.
@property (strong, nonatomic) NSDate* date;

#pragma mark - Subviews

@property (weak, nonatomic) IBOutlet UILabel* monthLabel;
@property (weak, nonatomic) IBOutlet UILabel* dayLabel;

@end
