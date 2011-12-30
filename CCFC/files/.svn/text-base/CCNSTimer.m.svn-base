//
//  CCNSTimer.m
//  CCFC
//
//  Created by xichen on 11-12-28.
//  Copyright 2011 ccteam. All rights reserved.
//

#import "CCNSTimer.h"


@implementation NSTimer(cc)

// create a common timer
+ (NSTimer *)createCommonTimer:(SEL)sel timeInterval:(NSTimeInterval)interval
{
	return [NSTimer scheduledTimerWithTimeInterval:interval
											target:self
										  selector:sel
										  userInfo:nil
										   repeats:NO];
}

// safe invalidate
- (void)safeInvalidate
{
	[self invalidate];
	self = nil;
}

@end
