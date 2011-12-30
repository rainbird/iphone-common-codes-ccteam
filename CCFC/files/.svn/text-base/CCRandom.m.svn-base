//
//  CCRandom.m
//  CCFC
//
//  Created by xichen on 11-12-23.
//  Copyright 2011 ccteam. All rights reserved.
//

#import "CCRandom.h"
#import <stdlib.h>
#import <mach/mach_time.h>
#import "CCLog.h"

@implementation CCRandom

// it uses a slightly more compicated argorithm than common random
+ (long)generateRandomNum
{
	static long randomValue = 0;
	srandom((unsigned)mach_absolute_time() + randomValue);
	randomValue = random();
	
	return random();
}

+ (NSString *)generateRandomStringByLen:(int)len
{
	char *str = (char *)malloc(len + 1);
	if(!str)
		return nil;
	
	memset(str, 0, len + 1);
	for(int i = 0; i < len; ++i)
	{
		str[i] = abs([self generateRandomNum] % 10) + '0';
		LOG_CHAR(str[i]);
	}
	
	LOG_CSTR(str);
	NSString *ret = [NSString stringWithUTF8String:str];
	free(str);
	return ret;
}

@end
