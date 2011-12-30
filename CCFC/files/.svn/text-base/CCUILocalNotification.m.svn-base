//
//  CCUILocalNotification.m
//  CCFC
//
//  Created by xichen on 11-12-24.
//  Copyright 2011 ccteam. All rights reserved.
//

#import "CCUILocalNotification.h"


@implementation UILocalNotification(cc)

// create a common local notification
+ (UILocalNotification *)createCommonNotification:(NSString *)alertBody withTime:(NSTimeInterval)fireSeconds
{
	UILocalNotification *noti = [[UILocalNotification alloc] init];
	if(noti != nil) 
	{
		NSDate *now = [NSDate date];
		noti.fireDate = [now dateByAddingTimeInterval:fireSeconds];
		noti.timeZone = [NSTimeZone defaultTimeZone];
		noti.alertBody = alertBody;
		[[UIApplication sharedApplication] scheduleLocalNotification:noti];	
	}
	[noti release];
	
	return noti;
}

@end
