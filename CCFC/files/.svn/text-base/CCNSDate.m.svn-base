//
//  CCNSDate.m
//  CCFC
//
//  Created by xichen on 11-12-17.
//  Copyright 2011年 ccteam. All rights reserved.
//

#import "CCNSDate.h"


@implementation NSDate(cc)

// 获取系统时间(yyyy-MM-dd HH:mm:ss.SSS格式)
+ (NSString *)getSystemTimeStr
{
	NSDateFormatter *dateFormatter = [NSDateFormatter new];
	[dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS"];	// 设置格式为年-月-日 时:分:秒.毫秒
	
	NSString *timeStr = [dateFormatter stringFromDate:[NSDate date]];
	[dateFormatter release];
	
	return timeStr;
}

// print current time using printf func
+ (void)printCurrentTime
{
	printf("Current Time is %s\n", [[self getSystemTimeStr] UTF8String]);
}

// print the system date by chinese format
+ (void)printSystemDateByChineseFormat
{
	NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
	//NSLocale *locale = [[NSLocale alloc] initWithLocaleIdentifier:@"zh_CN"];
	//[formatter setLocale:locale];
	//[locale release];
	
	[formatter setDateFormat:@"YYY年MM月d日EEEE"];
	NSDate *date = [NSDate date];
	NSLog(@"%@", [formatter stringFromDate:date]);
	[formatter release];
}

@end
