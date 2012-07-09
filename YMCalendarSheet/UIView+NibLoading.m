
//  Created by Yang Meyer on 12.11.11.
//  Copyright 2011 Yang Meyer. Some rights reserved.

#import "UIView+NibLoading.h"

@implementation UIView (NibLoading)

+ (id) loadFromNib {
	NSString* nibName = NSStringFromClass([self class]);
	NSArray* elements = [[NSBundle mainBundle] loadNibNamed:nibName owner:nil options:nil];
	for (NSObject* anObject in elements) {
		if ([anObject isKindOfClass:[self class]]) {
			return anObject;
		}
	}
	return nil;
}

@end
