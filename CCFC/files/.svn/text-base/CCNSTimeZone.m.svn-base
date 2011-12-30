//
//  CCNSTimeZone.m
//  CCFC
//
//  Created by xichen on 11-12-24.
//  Copyright 2011 ccteam. All rights reserved.
//

#import "CCNSTimeZone.h"
#import "CCLog.h"

@implementation NSTimeZone(cc)

+ (void)setTimeZone:(NSString *)zoneStr
{
	NSTimeZone *timeZone = [NSTimeZone timeZoneWithName:zoneStr];
	[NSTimeZone setDefaultTimeZone:timeZone];
}

+ (void)logKnownTimeZones
{
	NSArray *array = [NSTimeZone knownTimeZoneNames];
	LOG_ARR(array);

	for(int i = 0;i < [array count];++i)
	{
		NSTimeZone *timeZone = [NSTimeZone timeZoneWithName:[array objectAtIndex:i]];
		LOG_ID(timeZone);
	}
}

@end
