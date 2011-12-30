//
//  CCIOS.m
//  CCFC
//
//  Created by xichen on 11-12-17.
//  Copyright 2011年 ccteam. All rights reserved.
//

#import "CCIOS.h"
#import "CCNSString.h"
#import "CCUIDevice.h"

@implementation CCIOS

//获取OS版本
+ (NSString *)osVersion	
{
	return [[UIDevice currentDevice] systemVersion];
}

// 获取OS主版本号
+ (NSString *)osMajorVer
{
	NSString *osVer = [self osVersion];
    if(osVer == nil)
        return nil;
    
	NSInteger index = [osVer firstIndexOfChar:'.'];
	if(index < 0)
	{
		return osVer;
	}
	else if(0 == index)
	{
		return @"";
	}
	else
	{
		return [osVer substringToIndex:index];
	}
}

// 获取OS子版本号
+ (NSString *)osMinorVer
{
	NSString *osVer = [self osVersion];
	
	NSInteger firstIndex = [osVer firstIndexOfChar:'.'];
	NSInteger lastIndex = [osVer firstIndexOfChar:'.' withAppearCount:2];
	if(firstIndex < 0)
	{
		return @"";
	}
	else if(lastIndex < 0)
	{
		if(firstIndex == osVer.length - 1)
		{
			return @"";
		}
		return [osVer substringWithRange:NSMakeRange(firstIndex + 1, osVer.length - firstIndex - 1)];
	}
	else
	{
		return [osVer substringWithRange:NSMakeRange(firstIndex + 1, lastIndex - firstIndex - 1)];
	}
}

// whether the device supports multitask
+ (BOOL)isSupportsMultitask __OSX_AVAILABLE_STARTING(__MAC_NA,__IPHONE_4_0)
{
	return [UIDevice isSupportsMultitask];
}

@end
